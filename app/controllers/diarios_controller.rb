class DiariosController < ApplicationController
  # GET /diarios
  # GET /diarios.json
  def index
    @diarios = Diario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diarios }
    end
  end

  # GET /diarios/1
  # GET /diarios/1.json
  def show
    @diario = Diario.find(params[:id])
    #@tareas = Tarea.where("zona_id = ?", @diario.zona_id)
    @tareas = Tarea.find(:all, :conditions => ["zona_id = ? AND fecha = ?", @diario.zona_id, @diario.fecha])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diario }
    end
  end

  # GET /diarios/new
  # GET /diarios/new.json
  def new
    @diario = Diario.new
    $fecha = params[:fecha]
    $zona = params[:zona]
    @zona = Zona.find(params[:zona])

    #@diario.fecha = params[:fecha]
    #@diario.zona_id = params[:zona]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diario }
    end
  end

  def add_informe
    @diario = Diario.find(params[:id])
  end

  # GET /diarios/1/edit
  def edit
    @diario = Diario.find(params[:id])
  end

  # POST /diarios
  # POST /diarios.json
  def create
    @diario = Diario.new(params[:diario])
    @diario.zona_id = $zona
    @diario.fecha = $fecha


    respond_to do |format|
      if @diario.save
        format.html { redirect_to @diario, notice: 'Diario fue creado correctamente.' }
        format.json { render json: @diario, status: :created, location: @diario }
      else
        format.html { render action: "new" }
        format.json { render json: @diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diarios/1
  # PUT /diarios/1.json
  def update
    @diario = Diario.find(params[:id])
    @nombre = current_persona.nombre

    respond_to do |format|


      if @diario.update_attributes(params[:diario])
        format.html { redirect_to @diario, notice: 'Informe agregado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diario.errors, status: :unprocessable_entity }
      end

      if !@diario.nuevoI.nil? && !@diario.nuevoI.empty?
	if @diario.informe.nil? || @diario.informe.empty?
		@diario.informe= @nombre+": "+@diario.nuevoI
		@diario.nuevoI=""
		@diario.save  		  	
	else
        	@diario.informe= @diario.informe+"\n"+@nombre+": "+@diario.nuevoI
		@diario.nuevoI=""
		@diario.save
	end
        #format.html { redirect_to @diario, notice: 'Diario was successfully updated.' }
        #format.json { head :no_content }
      end

    end
  end

  # DELETE /diarios/1
  # DELETE /diarios/1.json
  def destroy
    @diario = Diario.find(params[:id])
    @diario.destroy

    respond_to do |format|
      format.html { redirect_to diarios_url }
      format.json { head :no_content }
    end
  end
end
