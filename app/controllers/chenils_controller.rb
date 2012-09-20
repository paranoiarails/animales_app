class ChenilsController < ApplicationController
 
before_filter :authenticate
#, :except => [:index, :show]
before_filter :usuario_coordinador, :only => [:destroy, :new]

 # GET /chenils
  # GET /chenils.json
  def index
    @chenils = Chenil.all
    @zonas = Zona.all	
    @animals = Animal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chenils }
    end
  end

  def coordchen
    @chenils = Chenil.all
    @zonas = Zona.all	
  end

  # GET /chenils/1
  # GET /chenils/1.json
  def show
    @chenil = Chenil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chenil }
    end
  end

  # GET /chenils/new
  # GET /chenils/new.json
  def new
    @chenil = Chenil.new
    @zonas = Zona.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chenil }
    end
  end

  # GET /chenils/1/edit
  def edit
    @chenil = Chenil.find(params[:id])
    @zonas = Zona.all
  end

  # POST /chenils
  # POST /chenils.json
  def create
    @chenil = Chenil.new(params[:chenil])
 

    respond_to do |format|
      if @chenil.save
        format.html { redirect_to @chenil, notice: 'Chenil was successfully created.' }
        format.json { render json: @chenil, status: :created, location: @chenil }
      else
        format.html { render action: "new" }
        format.json { render json: @chenil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chenils/1
  # PUT /chenils/1.json
  def update
    @chenil = Chenil.find(params[:id])

    respond_to do |format|
      if @chenil.update_attributes(params[:chenil])
        format.html { redirect_to @chenil, notice: 'Chenil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chenil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chenils/1
  # DELETE /chenils/1.json
  def destroy
    @chenil = Chenil.find(params[:id])
    @chenil.destroy

    respond_to do |format|
      format.html { redirect_to chenils_url }
      format.json { head :no_content }
    end
  end


private

	def usuario_coordinador
	   deny_destroy unless (current_persona.perfil.ocupacion_id==1 || current_persona.perfil.ocupacion_id==3)
	end

        def deny_destroy
    	   store_location
    	   redirect_to (animals_path), :notice => "Necesitas permisos de coordinador/veterinario para dar de alta/baja un chenil."
  	end

end
