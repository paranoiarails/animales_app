class CreateSubmenus < ActiveRecord::Migration
  def change
    create_table :submenus do |t|
      t.integer :menu_id
      t.string :titulo
      t.text :contenido
      t.string :Picture_file_name
      t.string :Picture_content_type
      t.integer :Picture_file_size
      t.datetime :Picture_updated_at

      t.timestamps
    end
  end
end
