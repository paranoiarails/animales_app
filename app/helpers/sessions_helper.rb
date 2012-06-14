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




end
