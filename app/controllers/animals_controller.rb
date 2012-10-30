class AnimalsController < ApplicationController
  # GET /animals
  # GET /animals.json

#before_filter :signed_in?, :except => [:index, :show]
#407 (personal) before_filter :coorect_user, :only => [:edit, :update]
before_filter :authenticate, :except => [:index, :show]
before_filter :usuario_c_v_v, :only => [:destroy, :new, :edit, :mover]

  Coordinador=1
  Voluntario=2
  Veterinario=3
  Limpiador=4

  def index
    @animals = Animal.all
  #  @animals = Animal.find(:all, :conditions => conditions)
    @chenils = Chenil.all
    @zonas = Zona.all
    @search = Search.new	
   # @cont

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animals }
    end
  end

  def add_foto
    @animal = Animal.find(params[:id])
    @photo = @animal.animal_images.build	
  end

  def zona_mover
    @animal = Animal.find(params[:id])
    @zonas = Zona.all
   #     @zona = Zona.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @animal }
    end
  end


  def mover
    @animal = Animal.find(params[:id2])

    @aux

  #  @animals = Animal.all
  #  if params[:chenil_id.zona_id]
  #    @animals = @animals.where(:chenil.zona_id =>(params[:chenil.zona_id] == @animal.chenil.zona_id))
  #  end
    @chenil = @animal.chenil_id
  #optimizacion tamaño busqueda/ tabla chenils
  #   @chenils = Chenil.all
    @zona = Zona.find(params[:id1])
    @chenils = Chenil.find(:all, :conditions => ["zona_id = ?", @zona.id])
  #  @animals = Animal.find(:all, :conditions => ["chenil_id in ?", @chenils])
    @animals = Animal.where("chenil_id in (?)", @chenils)
 
 #   @zona = @animal.chenil.zona_id
  
#  @zona = Zona.find(params[:animal.chenil_id.zona_id])
  #  Optimizacion
#    @relacion_animals = RelacionAnimal.all
    @relacion_animals = RelacionAnimal.find(:all, :conditions => ["animal1_id = ? OR animal2_id = ?", @animal.id, @animal.id])	

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animals }
    end
  end

  def moverfin
    @animal = Animal.find(params[:id1])
    @chenil = Chenil.find(params[:id2])    
  end

  def relaciones
    @animal = Animal.find(params[:id])
    @animals = Animal.all
    @chenil = @animal.chenil_id
    @zona = @animal.chenil.zona_id
    @relacion_animal = RelacionAnimal.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animals }
    end
  end

  def relacionesXanimal
    @animal = Animal.find(params[:id])
    @zona = @animal.chenil.zona_id
    @relacion_animals = RelacionAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animals }
    end
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    @animal = Animal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @animal }
    end
  end

  def zona
    @animal = Animal.new
    @zonas = Zona.all
   #     @zona = Zona.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @animal }
    end
  end

  # GET /animals/new
  # GET /animals/new.json
  def new
    @animal = Animal.new
#    @zona_id = $zona
    @zona = Zona.find(params[:id])
#    @animal = Animal.zona(params[:id])

    @zonas = Zona.all
    @chenils = Chenil.all
    @especies = Especie.all
    3.times { @animal.images.build }
    @aux = @animal.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @animal }
    end
  end

  # GET /animals/1/edit
  def edit
    @animal = Animal.find(params[:id])
    @chenils = Chenil.all
    3.times { @animal.images.build }
    
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(params[:animal])

    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render json: @animal, status: :created, location: @animal }
        @auxx=@animal.chenil_id
        @animal.zona_id=@animal.chenil.zona_id
	@animal.save
      else
        format.html { render action: "new", notice: 'No se puedo crear animal nuevo.' }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /animals/1
  # PUT /animals/1.json
  def update
    @animal = Animal.find(params[:id])

    respond_to do |format|
      if @animal.update_attributes(params[:animal])
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy

    respond_to do |format|
      format.html { redirect_to animals_url }
      format.json { head :no_content }
    end
  end


private

	def usuario_c_v_v
	   deny_destroy unless (current_persona.perfil.ocupacion_id==1 || current_persona.perfil.ocupacion_id==3 || current_persona.perfil.ocupacion_id==2)
	end

        def deny_destroy
    	   store_location
    	   redirect_to (animals_path), :notice => "Necesitas permisos de coordinador/veterinario/voluntario para dar de baja/alta/editar un animal."
  	end



end
