class PerfilsController < ApplicationController
  # GET /perfils
  # GET /perfils.json
  def index
    @perfils = Perfil.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perfils }
    end
  end

  # GET /perfils/1
  # GET /perfils/1.json
  def show
    @perfil = Perfil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perfil }
    end
  end

  # GET /perfils/new
  # GET /perfils/new.json
  def new
    @perfil = Perfil.new
    @ocupacions = Ocupacion.all
    @persona = Persona.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perfil }
    end
  end

  # GET /perfils/1/edit
  def edit
    @perfil = Perfil.find(params[:id])
    @ocupacions = Ocupacion.all
    

  end

  # POST /perfils
  # POST /perfils.json
  def create
    @perfil = Perfil.new(params[:perfil])



    respond_to do |format|


      if @perfil.save
        format.html { redirect_to @perfil, notice: 'Perfil was successfully created.' }
        format.json { render json: @perfil, status: :created, location: @perfil }

#    @persona = Persona.find(params[:idd])
#@persona.perfil_id = @perfil.id
#@persona.update
      else
        format.html { render action: "new" }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perfils/1
  # PUT /perfils/1.json
  def update
    @perfil = Perfil.find(params[:id])
    @ocupacions = Ocupacion.all

    params[:perfil][:zona_ids] ||= []

    respond_to do |format|
      if @perfil.update_attributes(params[:perfil])
        format.html { redirect_to @perfil, notice: 'Perfil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfils/1
  # DELETE /perfils/1.json
  def destroy
    @perfil = Perfil.find(params[:id])
    @perfil.destroy

    respond_to do |format|
      format.html { redirect_to perfils_url }
      format.json { head :no_content }
    end

  end
end
