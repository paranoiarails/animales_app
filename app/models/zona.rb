# == Schema Information
#
# Table name: zonas
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  notas      :string(255)
#  text       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Zona < ActiveRecord::Base

attr_accessible :nombre, :notas, :text

	has_many :chenils

	has_many :animales

        has_many :horarios

	has_and_belongs_to_many :perfils
        
end

