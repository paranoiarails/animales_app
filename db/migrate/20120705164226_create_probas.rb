class CreateProbas < ActiveRecord::Migration
  def change
    create_table :probas do |t|
      t.string :nombre
      t.string :correo
      t.integer :per_id

      t.timestamps
    end
  end
end
