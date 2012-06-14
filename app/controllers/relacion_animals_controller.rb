class RelacionAnimalsController < ApplicationController
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
  end

  # POST /relacion_animals
  # POST /relacion_animals.json
  def create
    @relacion_animal = RelacionAnimal.new(params[:relacion_animal])

    respond_to do |format|
      if @relacion_animal.save
        format.html { redirect_to @relacion_animal, notice: 'Relacion animal was successfully created.' }
        format.json { render json: @relacion_animal, status: :created, location: @relacion_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @relacion_animal.errors, status: :unprocessable_entity }
      end
    end
  end

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
end
