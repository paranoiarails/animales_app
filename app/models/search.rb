class Search < ActiveRecord::Base
  attr_accessible :nombre, :zona_id
   #@chenils = Chenil.find(:all, :conditions => ["chenils.zona_id = ?", zona_id]) unless zona_id.blank?
   #@chenils = Chenil.where("chenils.zona_id = ?", zona_id) unless zona_id.blank?
  
#http://railscasts.com/episodes/111-advanced-search-form
def animals
  @animales = find_animals

end

private

def find_animals
 # Animal.find(:all, :conditions => conditions)
  
 @chenil_id=Chenil.where("chenils.zona_id = ?", zona_id) unless zona_id.blank?
 
if !(nombre.blank? || zona_id.blank?)
 Animal.where("nombre LIKE ? AND chenil_id in (?)", "%#{nombre}%", @chenil_id) unless (nombre.blank? || zona_id.blank?)
else if (zona_id.blank?)
 Animal.where("nombre LIKE ?", "%#{nombre}%") unless !zona_id.blank?
#@chenil_id.nil? 
#&& nombre.blank?
else if (nombre.blank?)
 Animal.where("chenil_id in (?)", @chenil_id) unless !nombre.blank?
#@chenil_id.nil? &&
end
end
end
end

def name_conditions
  ["animals.nombre LIKE ?", "%#{nombre}%"] unless nombre.blank?
end


def category_conditions
#@chenils = Chenil.where(:zona_id => (params[:zona_id]== :zona_id)) unless zona_id.blank?
#@chenils = Chenil.where("zona_id = ?", :zona_id) unless zona_id.blank?
  # ["animals.chenil_id = ?", @chenils_id && @chenils.zona_id == zona_id] unless zona_id.blank?	  
# ["animals.chenil_id = chenils.id" && "chenils.zona_id = ?" ,zona_id]
  # (:chenil_id => :chenil.id AND :chenils.zona_id => :zona_id)
  #(:chenil_id => :zona_id)
  #[:animals_chenil_id => zona_id]
  @chenil_id=Chenil.where("chenils.zona_id = ?", zona_id) unless zona_id.blank?
#["animals.chenil_id = :chenil_id", {:chenil_id => params [:chenil_id]}] unless zona_id.blank?
  ["animals.chenil_id in (?)", @chenil_id]unless @chenil_id.nil?


end



def conditions
  [conditions_clauses.join(' AND '), *conditions_options]
end

def conditions_clauses
  conditions_parts.map { |condition| condition.first }
end

def conditions_options
  conditions_parts.map { |condition| condition[1..-1] }.flatten
end

def conditions_parts
  private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
end



end
