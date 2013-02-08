# == Schema Information
#
# Table name: chenils
#
#  id         :integer         not null, primary key
#  zona_id    :integer
#  ocupado    :integer
#  capacidad  :integer
#  caplibre   :integer
#  notas      :text
#  estado     :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  numero     :integer
#

class Chenil < ActiveRecord::Base

attr_accessible :ocupado, :capacidad, :caplibre, :zona_id, :notas, :estado


attr_accessible :numero

	belongs_to :zona, :foreign_key=>'zona_id'

	has_many :animals

	validates :zona_id, :presence => true


end
