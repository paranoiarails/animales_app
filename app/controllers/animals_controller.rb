class AnimalsController < ApplicationController
  # GET /animals
  # GET /animals.json

  @auxx

  def index
    @animals = Animal.all
    @chenils = Chenil.all
    @zonas = Zona.all
    @cont

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animals }
    end
  end

  def mover
    @animal = Animal.find(params[:id])

    @aux
    @animals = Animal.all
    @chenil = @animal.chenil_id
    @chenils = Chenil.all
    @zona = @animal.chenil.zona_id
  #  @zona = Zona.find(params[:animal.chenil_id.zona_id])
    @relacion_animals = RelacionAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animals }
    end
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

  # GET /animals/new
  # GET /animals/new.json
  def new
    @animal = Animal.new
    @chenils = Chenil.all
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
      else
        format.html { render action: "new" }
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
end
