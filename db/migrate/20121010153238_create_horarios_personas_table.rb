class CreateHorariosPersonasTable < ActiveRecord::Migration
  def self.up
	create_table :horarios_personas, :id => false do |t|
	    t.references :horario
	    t.references :persona
        end
  	add_index :horarios_personas, [:horario_id, :persona_id]
  	add_index :horarios_personas, [:persona_id, :horario_id]
  end

end
