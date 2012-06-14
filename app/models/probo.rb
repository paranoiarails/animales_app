# == Schema Information
#
# Table name: probos
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Probo < ActiveRecord::Base
	has_and_belongs_to_many :probas
end
