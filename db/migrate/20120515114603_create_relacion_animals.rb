class CreateRelacionAnimals < ActiveRecord::Migration
  def change
    create_table :relacion_animals do |t|
      t.integer :animal1_id
      t.integer :animal2_id
#      t.integer :relacion
      t.string :relacion

      t.timestamps
    end
  end
end
