class PersonasController < ApplicationController
before_filter :authenticate
before_filter :usuario_coordinador, :only => [:destroy, :edit, :ad_perfil]
#permisos show, edit para si mismos


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

#    def new_perf

#    @perfil = Perfil.new(params[:perfil])
#    @persona = Persona.find(params[:id])

#	if @perfil.save
#  	   @persona.perfil = @perfil
#           @persona.update_attributes(params[:persona])
#	   redirect_to @persona
#	end

#    end


  def ad_perfil
    $acpersona = Persona.find(params[:id])
   # @personas = Persona.all	
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

#No entraria como persona nueva
#######################################################
#	sign_in @persona
#	flash[:success] = "Welcome to the Sample App!"

    else
	@title = "Sign up"
	render 'new'
    end
  end

  # PUT /personas/1
  # PUT /personas/1.json
  def update
    @persona = Persona.find(params[:id])

    respond_to do |format|
      if @persona.update_attributes(params[:persona])
        format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy

    respond_to do |format|
      format.html { redirect_to personas_url }
      format.json { head :no_content }
    end
  end

private
  
	def usuario_coordinador
	   deny_destroy unless current_persona.perfil.ocupacion_id==1 
	end

        def deny_destroy
    	   store_location
    	   redirect_to (personas_path), :notice => "Necesitas permisos de coordinador para dar de baja una persona y para assignar un perfil."
  	end

end
