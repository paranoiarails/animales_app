class CreatePersonas < ActiveRecord::Migration
  def self.up
    create_table :personas do |t|
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end

def self.down
drop_table :users
end

end
