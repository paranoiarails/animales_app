class ProbasProbosController < ApplicationController
  # GET /probas_probos
  # GET /probas_probos.json
  def index
    @probas_probos = ProbasProbo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @probas_probos }
    end
  end

  # GET /probas_probos/1
  # GET /probas_probos/1.json
  def show
    @probas_probo = ProbasProbo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @probas_probo }
    end
  end

  # GET /probas_probos/new
  # GET /probas_probos/new.json
  def new
    @probas_probo = ProbasProbo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @probas_probo }
    end
  end

  # GET /probas_probos/1/edit
  def edit
    @probas_probo = ProbasProbo.find(params[:id])
  end

  # POST /probas_probos
  # POST /probas_probos.json
  def create
    @probas_probo = ProbasProbo.new(params[:probas_probo])

    respond_to do |format|
      if @probas_probo.save
        format.html { redirect_to @probas_probo, notice: 'Probas probo was successfully created.' }
        format.json { render json: @probas_probo, status: :created, location: @probas_probo }
      else
        format.html { render action: "new" }
        format.json { render json: @probas_probo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /probas_probos/1
  # PUT /probas_probos/1.json
  def update
    @probas_probo = ProbasProbo.find(params[:id])

    respond_to do |format|
      if @probas_probo.update_attributes(params[:probas_probo])
        format.html { redirect_to @probas_probo, notice: 'Probas probo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @probas_probo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /probas_probos/1
  # DELETE /probas_probos/1.json
  def destroy
    @probas_probo = ProbasProbo.find(params[:id])
    @probas_probo.destroy

    respond_to do |format|
      format.html { redirect_to probas_probos_url }
      format.json { head :no_content }
    end
  end
end
