class ZonasController < ApplicationController
  before_filter :authenticate
  before_filter :usuario_coordinador, :only => [:destroy, :new]

  # GET /zonas
  # GET /zonas.json
  def index
    @zonas = Zona.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zonas }
    end
  end
 
  def coord
    @zonas = Zona.all
  end	

  def cheniles
    @zona = Zona.find(params[:id])
    @chenils = Chenil.all
#pendiente optimizacion solo animales con zona_id=zona.id
    @animals = Animal.all
  end	

  # GET /zonas/1
  # GET /zonas/1.json
  def show
    @zona = Zona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zona }
    end
  end

  # GET /zonas/new
  # GET /zonas/new.json
  def new
    @zona = Zona.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zona }
    end
  end

  # GET /zonas/1/edit
  def edit
    @zona = Zona.find(params[:id])
  end

  # POST /zonas
  # POST /zonas.json
  def create
    @zona = Zona.new(params[:zona])

    respond_to do |format|
      if @zona.save
        format.html { redirect_to @zona, notice: 'Zona was successfully created.' }
        format.json { render json: @zona, status: :created, location: @zona }
      else
        format.html { render action: "new" }
        format.json { render json: @zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zonas/1
  # PUT /zonas/1.json
  def update
    @zona = Zona.find(params[:id])

    respond_to do |format|
      if @zona.update_attributes(params[:zona])
        format.html { redirect_to @zona, notice: 'Zona was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zonas/1
  # DELETE /zonas/1.json
  def destroy
    @zona = Zona.find(params[:id])
    @zona.destroy

    respond_to do |format|
      format.html { redirect_to zonas_url }
      format.json { head :no_content }
    end
  end
 
  private
    def authenticate
    deny_access unless signed_in?
    end

	def usuario_coordinador
	   deny_destroy unless current_persona.perfil.ocupacion_id==1
	end

        def deny_destroy
    	   store_location
    	   redirect_to (zonas_path), :notice => "Necesitas permisos de coordinador para crear/eliminar una zona."
  	end


end
