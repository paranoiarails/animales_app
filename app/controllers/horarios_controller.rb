class HorariosController < ApplicationController
  # GET /horarios
  # GET /horarios.json
  def index
    @horarios = Horario.all
    @persona = current_persona
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    @fecha

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @horarios }
    end
  end

  def add_hora
	@persona = current_persona
	@horario = Horario.new
    @horarios = Horario.all
    @fecha = Date.parse(params[:fecha])
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    @tarde = params[:tarde]
    @guardados = Horario.find(:all, :conditions => ["fecha = ?", @fecha])
  end

  # GET /horarios/1
  # GET /horarios/1.json
  def show
    @horario = Horario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @horario }
    end
  end

  # GET /horarios/new
  # GET /horarios/new.json
  def new
    @horario = Horario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @horario }
    end
  end

  # GET /horarios/1/edit
  def edit
    @horario = Horario.find(params[:id])
  end

  # POST /horarios
  # POST /horarios.json
  def create
    @horario = Horario.new(params[:horario])

    respond_to do |format|
      if @horario.save
        format.html { redirect_to @horario, notice: 'Horario was successfully created.' }
        format.json { render json: @horario, status: :created, location: @horario }
      else
        format.html { render action: "new" }
        format.json { render json: @horario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /horarios/1
  # PUT /horarios/1.json
  def update
    @horario = Horario.find(params[:id])

    respond_to do |format|
      if @horario.update_attributes(params[:horario])
        format.html { redirect_to @horario, notice: 'Horario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @horario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horarios/1
  # DELETE /horarios/1.json
  def destroy
    @horario = Horario.find(params[:id])
    @horario.destroy

    respond_to do |format|
      format.html { redirect_to horarios_url }
      format.json { head :no_content }
    end
  end
end
