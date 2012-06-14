module PersonasHelper
def gravatar_for(persona, options = { :size => 30 })
gravatar_image_tag(persona.email.downcase, :alt => persona.nombre,
:class => 'gravatar',
:gravatar => options)
end

end
