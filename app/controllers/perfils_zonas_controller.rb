class PerfilsZonasController < ApplicationController
  # GET /perfils_zonas
  # GET /perfils_zonas.json
  def index
    @perfils_zonas = PerfilsZona.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perfils_zonas }
    end
  end

  # GET /perfils_zonas/1
  # GET /perfils_zonas/1.json
  def show
    @perfils_zona = PerfilsZona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perfils_zona }
    end
  end

  # GET /perfils_zonas/new
  # GET /perfils_zonas/new.json
  def new
    @perfils_zona = PerfilsZona.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perfils_zona }
    end
  end

  # GET /perfils_zonas/1/edit
  def edit
    @perfils_zona = PerfilsZona.find(params[:id])
  end

  # POST /perfils_zonas
  # POST /perfils_zonas.json
  def create
    @perfils_zona = PerfilsZona.new(params[:perfils_zona])

    respond_to do |format|
      if @perfils_zona.save
        format.html { redirect_to @perfils_zona, notice: 'Perfils zona was successfully created.' }
        format.json { render json: @perfils_zona, status: :created, location: @perfils_zona }
      else
        format.html { render action: "new" }
        format.json { render json: @perfils_zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perfils_zonas/1
  # PUT /perfils_zonas/1.json
  def update
    @perfils_zona = PerfilsZona.find(params[:id])

    respond_to do |format|
      if @perfils_zona.update_attributes(params[:perfils_zona])
        format.html { redirect_to @perfils_zona, notice: 'Perfils zona was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perfils_zona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfils_zonas/1
  # DELETE /perfils_zonas/1.json
  def destroy
    @perfils_zona = PerfilsZona.find(params[:id])
    @perfils_zona.destroy

    respond_to do |format|
      format.html { redirect_to perfils_zonas_url }
      format.json { head :no_content }
    end
  end
end
