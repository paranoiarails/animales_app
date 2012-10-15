class Horario < ActiveRecord::Base

	belongs_to :persona, :foreign_key=>'persona_id'

        belongs_to :zonas, :foreign_key=>'zona_id'

	validates :zona_id, :presence => true
end
