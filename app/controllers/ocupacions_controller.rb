class OcupacionsController < ApplicationController
before_filter :authenticate
before_filter :usuario_coordinador, :only => [:destroy, :edit, :new]


 # GET /ocupacions
  # GET /ocupacions.json
  def index
    @ocupacions = Ocupacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ocupacions }
    end
  end

  # GET /ocupacions/1
  # GET /ocupacions/1.json
  def show
    @ocupacion = Ocupacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ocupacion }
    end
  end

  # GET /ocupacions/new
  # GET /ocupacions/new.json
  def new
    @ocupacion = Ocupacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ocupacion }
    end
  end

  # GET /ocupacions/1/edit
  def edit
    @ocupacion = Ocupacion.find(params[:id])
  end

  # POST /ocupacions
  # POST /ocupacions.json
  def create
    @ocupacion = Ocupacion.new(params[:ocupacion])

    respond_to do |format|
      if @ocupacion.save
        format.html { redirect_to @ocupacion, notice: 'Ocupacion was successfully created.' }
        format.json { render json: @ocupacion, status: :created, location: @ocupacion }
      else
        format.html { render action: "new" }
        format.json { render json: @ocupacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ocupacions/1
  # PUT /ocupacions/1.json
  def update
    @ocupacion = Ocupacion.find(params[:id])

    respond_to do |format|
      if @ocupacion.update_attributes(params[:ocupacion])
        format.html { redirect_to @ocupacion, notice: 'Ocupacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ocupacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocupacions/1
  # DELETE /ocupacions/1.json
  def destroy
    @ocupacion = Ocupacion.find(params[:id])
    @ocupacion.destroy

    respond_to do |format|
      format.html { redirect_to ocupacions_url }
      format.json { head :no_content }
    end
  end

private
  
	def usuario_coordinador
	   deny_destroy unless current_persona.perfil.ocupacion_id==1 
	end

        def deny_destroy
    	   store_location
    	   redirect_to (ocupacions_path), :notice => "Necesitas permisos de coordinador para crear/editar/destruir una ocupacion."
  	end

end

