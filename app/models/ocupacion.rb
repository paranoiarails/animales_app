# == Schema Information
#
# Table name: ocupacions
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Ocupacion < ActiveRecord::Base
end
