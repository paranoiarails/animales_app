class DinasController < ApplicationController
  # GET /dinas
  # GET /dinas.json
  def index
    @dinas = Dina.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dinas }
    end
  end

  # GET /dinas/1
  # GET /dinas/1.json
  def show
    @dina = Dina.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dina }
    end
  end

  # GET /dinas/new
  # GET /dinas/new.json
  def new
    @dina = Dina.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dina }
    end
  end

  # GET /dinas/1/edit
  def edit
    @dina = Dina.find(params[:id])
  end

 def creardino

	@dina = Dina.find(params[:id])
 
	#@dino << @dina.build_dino

	@dino.dina << Dino.new
	
#	@dino = Dino.new(:dina_id => @dina.id)
	current_dina = @dina 
	#@dino.dina_id = @dina
 end

  # POST /dinas
  # POST /dinas.json
  def create
    @dina = Dina.new(params[:dina])


    respond_to do |format|
      if @dina.save
        format.html { redirect_to @dina, notice: 'Dina was successfully created.' }
        format.json { render json: @dina, status: :created, location: @dina }
      else
        format.html { render action: "new" }
        format.json { render json: @dina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dinas/1
  # PUT /dinas/1.json
  def update
    @dina = Dina.find(params[:id])

    respond_to do |format|
      if @dina.update_attributes(params[:dina])
        format.html { redirect_to @dina, notice: 'Dina was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinas/1
  # DELETE /dinas/1.json
  def destroy
    @dina = Dina.find(params[:id])
    @dina.destroy

    respond_to do |format|
      format.html { redirect_to dinas_url }
      format.json { head :no_content }
    end
  end
end
