class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
	add_index :personas, :email, :unique => true
  end

  def self.down
	remove_index :personas, :email
  end
end
