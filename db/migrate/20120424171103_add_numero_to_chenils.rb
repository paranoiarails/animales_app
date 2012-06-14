class AddNumeroToChenils < ActiveRecord::Migration
  def change
    add_column :chenils, :numero, :integer

  end
end
