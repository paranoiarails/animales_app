# == Schema Information
#
# Table name: animals
#
#  id                :integer         not null, primary key
#  nombre            :string(255)
#  raza              :string(255)
#  sexo              :string(255)
#  fecha_entrada     :date
#  observaciones     :text
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#  foto_file_name    :string(255)
#  foto_content_type :string(255)
#  foto_file_size    :integer
#  foto_updated_at   :datetime
#  chenil_id         :integer
#

class Animal < ActiveRecord::Base

     attr_accessible :nombre, :raza, :sexo, :fecha_entrada, :observaciones, :chenil_id, :images_attributes, :especie_id, :zona_id, :edad

  belongs_to :chenil, :foreign_key=>'chenil_id'  

  belongs_to :especie, :foreign_key=>'especie_id'

  belongs_to :zona, :foreign_key=>'zona_id'

#relacion muchos_a_muchos consigo misma 

   has_many(:relacion_animals, :foreign_key => :animal1_id, :dependent => :destroy)

   has_many(:reverse_relacion_animals, :class_name => :RelacionAnimal, :foreign_key => :animal2_id, :dependent => :destroy)

   has_many :animals, :through => :relacion_animals, :source => :animal2_id

#paperclip, asignacion de imagenes


   has_many :images  #, :dependent => :destroy

accepts_nested_attributes_for :images, :allow_destroy => true

#validates :especie_id, :presence => true

######railscast, allow_destroy => true
#, :reject_if => lambda { |t| t['animal_image'].nil? }

  #m-m consigo misma sin campos extras
  #has_and_belongs_to_many :relacion_animals, :class_name => "Animal",
   # :foreign_key => "animal1_id",
   # :association_foreign_key => "animal2_id"


# Paperclip
#  has_attached_file :foto,
#		:styles => {
#                      :thumb => "60x60>",
#                      :small => "150x150>"
#                 }




def animals
  @animales ||= find_animals
end


private

def find_animals
  Animal.find(:all, :conditions => conditions)
end

def name_conditions
  ["animals.nombre LIKE ?", "%#{nombre}%"] unless nombre.blank?
end


def category_conditions
  ["animals.chenil_id = ?", zona_id] unless zona_id.blank?
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
