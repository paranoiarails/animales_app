class AddSaltToPersonas < ActiveRecord::Migration
  def self.up
    add_column :personas, :salt, :string
  end
  
  def self.down
    remove_column :users, :salt
  end

end
