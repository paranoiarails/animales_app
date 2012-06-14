class CreateZonas < ActiveRecord::Migration
  def self.up
    create_table :zonas do |t|
      t.string :nombre
      t.string :notas
      t.string :text

      t.timestamps
    end
  end
end
