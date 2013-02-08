class RelacionAnimalsController < ApplicationController
before_filter :authenticate
before_filter :usuario_c_v_v, :only => [:destroy, :edit, :new]


  # GET /relacion_animals
  # GET /relacion_animals.json
  def index
    @relacion_animals = RelacionAnimal.all
    @zonas = Zona.all
    @animal2

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relacion_animals }
    end
  end

  # GET /relacion_animals/1
  # GET /relacion_animals/1.json
  def show
    @relacion_animal = RelacionAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relacion_animal }
    end
  end

  # GET /relacion_animals/new
  # GET /relacion_animals/new.json
  def new
    @relacion_animal = RelacionAnimal.new
    @zonas = Zona.all
    @animals = Animal.all
    @z

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relacion_animal }
    end
  end

  # GET /relacion_animals/1/edit
  def edit
    @relacion_animal = RelacionAnimal.find(params[:id])
    @tiposRel = TiposRel.all

  end

  # POST /relacion_animals
  # POST /relacion_animals.json
  def create
    @relacion_animal = RelacionAnimal.new(params[:relacion_animal])
  #  @relacion_animal.relacion_unica_en_ambos_sentidos
  #  @relaciones=RelacionAnimal.all
    @animal1=@relacion_animal.animal1_id
    @animal2=@relacion_animal.animal2.id    
	
  @duplicado=RelacionAnimal.find(:all, :conditions => ["(animal1_id = ? and animal2_id =?) or (animal1_id = ? and animal2_id = ?)", @animal1, @animal2, @animal2, @animal1])#.empty?

  #  @relacionplus = RelacionAnimal.find(:all, :conditions => ["animal1_id = ? OR animal2_id = ?", @animal.id, @animal.id])

 # @patata=@relacion_animal.relacion_unica?

  respond_to do |format|

if @duplicado.empty?
      if @relacion_animal.save
	#if @relacion_animal.animal1_id > @relacion_animal.animal2_id
	#	@relauxi=@relacion_animal		

#		@relauxi.animal2_id=@relacion_animal.animal1_id
#		@relauxi.animal1_id=@relacion_animal.animal2_id
#		@relacion_animal.delete
#		@relauxi.save
#	end
        format.html { redirect_to @relacion_animal, notice: 'Relacion animal was successfully created.' }
        format.json { render json: @relacion_animal, status: :created, location: @relacion_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @relacion_animal.errors, status: :unprocessable_entity }
      end

else 
        format.html { redirect_to @duplicado, notice: 'Esta relacion entre animales ya existia anteriormente y no se ha guardado el duplicado, por favor edite la relacion ya existente .' }
end
    end
  end

  #  @tiposRel= TiposRel.all
    #@relacionplus = RelacionAnimal.find(:all, :conditions => ["animal1_id = ? OR animal2_id = ?", @animal.id, @animal.id])
   # @relacionesTodas = RelacionAnimal.all

    #respond_to do |format|
     # if @relacion_animal.save
      #  @animal1=@relacion_animal.animal1_id
	#@animal2=@relacion_animal.animal2_id
  #<% @animals.each do |animal| %>
  # @relacionplus = RelacionAnimal.find(:all, :conditions => ["animal1_id = ? OR animal2_id = ?", @animal.id, @animal.id])
   #   @relacionesTodas.each do |relacion|
    #	if ((@animal1 == @relacion.animal1_id) AND (@animal2 == @relacion.animal2_id)) OR ((@animal1 == @relacion.animal2_id) AND (@animal2 == @relacion.animal1_id ))
    #	if ("@relacion.animal1_id = ? AND @relacion.animal2_id = ?", @animal1, @animal2)
     #       @repetido=1
     #   end
      # end
       # if @repetido==1
	#	format.html { redirect_to relacion, notice: 'Esta relacion ya existia, no se guardado el duplicado, edite o elimine la relación ya existente.' }
        #	format.json { render json: @relacion_animal, status: :created, location: @relacion_animal }
	#else


        #	format.html { redirect_to @relacion_animal, notice: 'Relacion animal was successfully created.' }
        #	format.json { render json: @relacion_animal, status: :created, location: @relacion_animal }
  #      end
   #   else
    #    format.html { render action: "new" }
     #   format.json { render json: @relacion_animal.errors, status: :unprocessable_entity }
     # end
    #end
  #end

  # PUT /relacion_animals/1
  # PUT /relacion_animals/1.json
  def update
    @relacion_animal = RelacionAnimal.find(params[:id])

    respond_to do |format|
      if @relacion_animal.update_attributes(params[:relacion_animal])
        format.html { redirect_to @relacion_animal, notice: 'Relacion animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relacion_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relacion_animals/1
  # DELETE /relacion_animals/1.json
  def destroy
    @relacion_animal = RelacionAnimal.find(params[:id])
    @relacion_animal.destroy

    respond_to do |format|
      format.html { redirect_to relacion_animals_url }
      format.json { head :no_content }
    end
  end

private
	def usuario_c_v_v
	   deny_destroy unless (current_persona.perfil.ocupacion_id==1 || current_persona.perfil.ocupacion_id==3 || current_persona.perfil.ocupacion_id==2)
	end

        def deny_destroy
    	   store_location
    	   redirect_to (relacion_animals_path), :notice => "Necesitas permisos de coordinador/veterinario/voluntario para dar de baja/alta/editar una relacion entre animales."
  	end

end


