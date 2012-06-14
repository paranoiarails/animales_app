# == Schema Information
#
# Table name: probas
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Proba < ActiveRecord::Base
		has_and_belongs_to_many :probos
end
