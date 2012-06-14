# == Schema Information
#
# Table name: dinos
#
#  id         :integer         not null, primary key
#  dina_id    :integer
#  nombre     :string(255)
#  raza       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Dino < ActiveRecord::Base
	belongs_to :dina, :foreign_key=>'dina_id', :inverse_of => :dino

#has_one :dino, :inverse_of => :dina, :autosave => true

end
