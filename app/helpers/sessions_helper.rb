module SessionsHelper

  def sign_in(persona)
	current_persona = persona
	session[:persona_id] = persona.id
	self.current_persona = persona
  end

  def sign_out
	session[:persona_id] = nil
	self.current_persona = nil
  end

  def current_persona=(persona)
	@current_persona = persona
  end

  def current_persona
	@current_persona ||= Persona.find(session[:persona_id]) if session[:persona_id]
  end

  def signed_in?
	!current_persona.nil?
  end

  def authenticate
     deny_access unless signed_in?
  end

  def deny_access
    store_location
    redirect_to signin_path, :notice => "Por favor dese de alta desde la sesion de otro usuario registrado o pinche en el link contactenos para ponerse en contacto con nosotros."
  end

#  def deny_access
#    store_location
#    redirect_to signin_path, :notice => "Please sign in to access this page."
#  end



  private

 	def store_location
	   session[:return_to] = request.fullpath
	end


end
