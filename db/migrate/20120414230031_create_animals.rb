class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :nombre
      t.string :raza
      t.string :sexo
      t.date :fecha_entrada
      t.text :observaciones
      t.integer :chenil_id

      t.timestamps
    end
    add_index :animals, :chenil_id  
  end
end
