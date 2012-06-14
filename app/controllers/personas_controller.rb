class PersonasController < ApplicationController
  def index
    @personas = Persona.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personas }
    end
  end

    def show
	@persona = Persona.find(params[:id])
	@title = @persona.nombre
	@patata
    end

    def new
    @title = "Sign up"
    @persona = Persona.new

    end

  def edit
    @persona = Persona.find(params[:id])

  end

    def new_perf

    @perfil = Perfil.new(params[:perfil])
    @persona = Persona.find(params[:id])

	if @perfil.save
  	   @persona.perfil = @perfil
           @persona.update_attributes(params[:persona])
	   redirect_to @persona
	end

    end


  def ad_perfil
    @persona = Persona.find(params[:id])
    @personas = Persona.all	
    @perfil = Perfil.new
    @ocupacions = Ocupacion.all

####    respond_to do |format|
 #     if @perfil.save
 #       format.html { redirect_to @persona, notice: 'pato save power.' }
 #       format.json { render json: @persona, status: :created, location: @animal }
#	@persona.perfil = @perfil
#	@persona.save
#      else
#        format.html { render action: "new" }
#        format.json { render json: @perfil.errors, status: :unprocessable_entity }

 #     end 		
 #   end


  end

  def create
    @persona = Persona.new(params[:persona])
    if @persona.save
	redirect_to @persona
	sign_in @persona
	flash[:success] = "Welcome to the Sample App!"

    else
	@title = "Sign up"
	render 'new'
    end
  end
  
end
