class ProbasController < ApplicationController
  # GET /probas
  # GET /probas.json
  def index
    @probas = Proba.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @probas }
    end
  end

  def ad_per
    $acproba = Proba.find(params[:id])
    @per = Per.new	

  end

  # GET /probas/1
  # GET /probas/1.json
  def show
    @proba = Proba.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proba }
    end
  end

  # GET /probas/new
  # GET /probas/new.json
  def new
    @proba = Proba.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proba }
    end
  end

  # GET /probas/1/edit
  def edit
    @proba = Proba.find(params[:id])
  end

  # POST /probas
  # POST /probas.json
  def create
    @proba = Proba.new(params[:proba])

    respond_to do |format|
      if @proba.save
        format.html { redirect_to @proba, notice: 'Proba was successfully created.' }
        format.json { render json: @proba, status: :created, location: @proba }
      else
        format.html { render action: "new" }
        format.json { render json: @proba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /probas/1
  # PUT /probas/1.json
  def update
    @proba = Proba.find(params[:id])

    respond_to do |format|
      if @proba.update_attributes(params[:proba])
        format.html { redirect_to @proba, notice: 'Proba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /probas/1
  # DELETE /probas/1.json
  def destroy
    @proba = Proba.find(params[:id])
    @proba.destroy

    respond_to do |format|
      format.html { redirect_to probas_url }
      format.json { head :no_content }
    end
  end
end
