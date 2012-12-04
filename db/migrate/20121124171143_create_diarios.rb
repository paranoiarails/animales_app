class CreateDiarios < ActiveRecord::Migration
  def change
    create_table :diarios do |t|
      t.integer :zona_id
      t.date :fecha
      t.text :tareas
      t.text :informe

      t.timestamps
    end
  end
end
