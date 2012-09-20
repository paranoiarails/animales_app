class EspeciesController < ApplicationController
  def index
    @especies = Especie.all
  end

  def show
    @especie = Especie.find(params[:id])
  end

  def new
    @especie = Especie.new
  end

  def create
    @especie = Especie.new(params[:especie])
    if @especie.save
      redirect_to @especie, :notice => "Successfully created especie."
    else
      render :action => 'new'
    end
  end

  def edit
    @especie = Especie.find(params[:id])
  end

  def update
    @especie = Especie.find(params[:id])
    if @especie.update_attributes(params[:especie])
      redirect_to @especie, :notice  => "Successfully updated especie."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @especie = Especie.find(params[:id])
    @especie.destroy
    redirect_to especies_url, :notice => "Successfully destroyed especie."
  end
end
