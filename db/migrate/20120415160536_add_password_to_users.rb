class AddPasswordToUsers < ActiveRecord::Migration
  def self.up
    add_column :personas, :encrypted_password, :string

  end

def self.down
remove_column :personas, :encrypted_password
end

end
