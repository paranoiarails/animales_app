class AddFotoToArticulo < ActiveRecord::Migration
  def self.up
    add_column :articulos, :Picture_file_name, :string
    add_column :articulos, :Picture_content_type, :string
    add_column :articulos, :Picture_file_size, :integer
    add_column :articulos, :Picture_updated_at, :datetime
  end

  def self.down
    remove_column :articulos, :Picture_file_name
    remove_column :articulos, :Picture_content_type
    remove_column :articulos, :Picture_file_size
    remove_column :articulos, :Picture_updated_at
  end
end
