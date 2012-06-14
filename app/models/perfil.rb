# == Schema Information
#
# Table name: perfils
#
#  id           :integer         not null, primary key
#  ocupacion_id :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  persona_id   :integer
#

class Perfil < ActiveRecord::Base



	has_one :persona, :foreign_key=>'persona_id', :inverse_of => :perfil, :autosave => true

#add_index :perfils, :persona_id, :unique => true
#validate_uniqueness_of :perfil_id


        belongs_to :ocupacion, :foreign_key=>'ocupacion_id' 

	has_and_belongs_to_many :zonas

	
validates :persona_id, :uniqueness => {:case_sensitive => false}
end
