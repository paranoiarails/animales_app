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


  belongs_to :chenil, :foreign_key=>'chenil_id'  

#relacion muchos_a_muchos consigo misma 

   has_many(:relacion_animals, :foreign_key => :animal1_id, :dependent => :destroy)

   has_many(:reverse_relacion_animals, :class_name => :RelacionAnimal, :foreign_key => :animal2_id, :dependent => :destroy)

   has_many :animals, :through => :relacion_animals, :source => :animal2_id

  #m-m consigo misma sin campos extras
  #has_and_belongs_to_many :relacion_animals, :class_name => "Animal",
   # :foreign_key => "animal1_id",
   # :association_foreign_key => "animal2_id"


# Paperclip
  has_attached_file :foto,
		:styles => {
                      :thumb => "60x60>",
                      :small => "150x150>"
                 }
end
