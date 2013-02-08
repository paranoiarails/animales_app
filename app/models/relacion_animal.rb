# == Schema Information
#
# Table name: relacion_animals
#
#  id         :integer         not null, primary key
#  animal1_id :integer
#  animal2_id :integer
#  relacion   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class RelacionAnimal < ActiveRecord::Base
validates_uniqueness_of :animal1_id, :scope => :animal2_id, :case_sensitive => false



  #belongs_to :chenil, :foreign_key=>'chenil_id'  
       #set_primary_key :relacion_animal_id

	belongs_to :animal, :foreign_key=>'animal1_id'
	belongs_to :animal2, :class_name =>Animal, :foreign_key=>'animal2_id'

#esta es la que funciona pero la he llevado a relacion_animals_controller/create
#def relacion_unica?
#  self.class.where("(animal1_id = ? and animal2_id =?) or (animal1_id = ? and animal2_id = ?)", animal1_id, animal2_id, animal2_id, animal1_id)#.empty?
#end


#undefined method `to_sym' for 18:Fixnum cambios en ruby 1.9
#def relacion_unica_en_ambos_sentidos
 # if self.class.exists?(:animal1_id => animal2_id, animal2_id => animal1_id)
 #   errors.add:base, 'ya existe una relacion entre estos dos animales'
 # end
#end 

#errors.add(:base, 'already exists') if
# (self.class.where(:animal1_id => animal1.id, :animal2_id => animal2.id) +
# self.class.where(:animal1_id => animal2.id, :animal2_id => animal1.id)).any? 
end


