class PersController < ApplicationController
  # GET /pers
  # GET /pers.json
  def index
    @pers = Per.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pers }
    end
  end

  # GET /pers/1
  # GET /pers/1.json
  def show
    @per = Per.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @per }
    end
  end

  # GET /pers/new
  # GET /pers/new.json
  def new
    @per = Per.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @per }
    end
  end

  # GET /pers/1/edit
  def edit
    @per = Per.find(params[:id])
  end

  # POST /pers
  # POST /pers.json
  def create
    @per = Per.new(params[:per])

    respond_to do |format|
      if @per.save
        format.html { redirect_to @per, notice: 'Per was successfully created.' }
        format.json { render json: @per, status: :created, location: @per }

	$acproba.per = @per
	$acproba.update_attributes(params[:acproba])
      else
        format.html { render action: "new" }
        format.json { render json: @per.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pers/1
  # PUT /pers/1.json
  def update
    @per = Per.find(params[:id])

    respond_to do |format|
      if @per.update_attributes(params[:per])
        format.html { redirect_to @per, notice: 'Per was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @per.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pers/1
  # DELETE /pers/1.json
  def destroy
    @per = Per.find(params[:id])
    @per.destroy

    respond_to do |format|
      format.html { redirect_to pers_url }
      format.json { head :no_content }
    end
  end
end
