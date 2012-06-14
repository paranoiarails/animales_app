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

  #belongs_to :chenil, :foreign_key=>'chenil_id'  
       #set_primary_key :relacion_animal_id

	belongs_to :animal, :foreign_key=>'animal1_id'
	belongs_to :animal2, :class_name =>Animal, :foreign_key=>'animal2_id'

	#belongs_to :animal1_id, :class_name => :Animal
	#belongs_to :animal2_id, :class_name => :Animal
end

