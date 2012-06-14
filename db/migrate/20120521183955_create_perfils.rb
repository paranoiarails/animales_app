class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.integer :ocupacion_id

      t.timestamps
    end
  end
end
