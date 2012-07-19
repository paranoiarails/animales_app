class SessionsController < ApplicationController
  def new
	@title = "Sign in"
  end

  def create
	persona = Persona.authenticate(params[:session][:email],
	params[:session][:password])
    if persona.nil?
	flash.now[:error] = "Invalida combinacion de email/password."
	@title = "Sign in"
	#@patata = [:session][:password] imposible coger variables de los
        #controller
	render 'new'
    else
	sign_in persona
	redirect_to persona
    end
  end

  def destroy
	sign_out
	redirect_to root_path
  end

end
