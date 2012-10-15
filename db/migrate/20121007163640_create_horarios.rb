class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.integer :persona_id
      t.integer :zona_id
      t.date :fecha
      t.integer :tarde

      t.timestamps
    end
  end
end
