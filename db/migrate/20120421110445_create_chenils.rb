class CreateChenils < ActiveRecord::Migration
  def self.up
    create_table :chenils do |t|
      t.integer :zona_id
      t.integer :ocupado
      t.integer :capacidad
      t.integer :caplibre
      t.text :notas
      t.integer :estado

      t.timestamps
    end
    add_index :chenils, :zona_id
  end


end
