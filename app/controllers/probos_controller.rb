class ProbosController < ApplicationController
  # GET /probos
  # GET /probos.json
  def index
    @probos = Probo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @probos }
    end
  end

  # GET /probos/1
  # GET /probos/1.json
  def show
    @probo = Probo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @probo }
    end
  end

  # GET /probos/new
  # GET /probos/new.json
  def new
    @probo = Probo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @probo }
    end
  end

  # GET /probos/1/edit
  def edit
    @probo = Probo.find(params[:id])
  end

  # POST /probos
  # POST /probos.json
  def create
    @probo = Probo.new(params[:probo])

    respond_to do |format|
      if @probo.save
        format.html { redirect_to @probo, notice: 'Probo was successfully created.' }
        format.json { render json: @probo, status: :created, location: @probo }
      else
        format.html { render action: "new" }
        format.json { render json: @probo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /probos/1
  # PUT /probos/1.json
  def update
    @probo = Probo.find(params[:id])

    respond_to do |format|
      if @probo.update_attributes(params[:probo])
        format.html { redirect_to @probo, notice: 'Probo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @probo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /probos/1
  # DELETE /probos/1.json
  def destroy
    @probo = Probo.find(params[:id])
    @probo.destroy

  end
end
