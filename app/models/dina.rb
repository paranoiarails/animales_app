# == Schema Information
#
# Table name: dinas
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  edad       :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  dino_id    :integer
#

class Dina < ActiveRecord::Base
	has_one :dino, :inverse_of => :dina, :autosave => true
end
