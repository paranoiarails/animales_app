class CreateDinos < ActiveRecord::Migration
  def change
    create_table :dinos do |t|
      t.integer :dina_id
      t.string :nombre
      t.string :raza

      t.timestamps
    end
  end
end
