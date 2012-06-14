class AddChenilToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :chenil_id, :integer

  end
end
