class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.integer :persona_id
      t.integer :zona_id
      t.integer :animal_id
      t.text :texto
      t.integer :ocupacion_id

      t.timestamps
    end
  end
end
