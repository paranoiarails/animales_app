class Diario < ActiveRecord::Base

	belongs_to :zona, :foreign_key=>'zona_id'

	validates :zona_id, :fecha, :presence => true

end
