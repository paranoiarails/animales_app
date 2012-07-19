class AddCamposToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :nombre, :string

    add_column :searches, :zona_id, :integer

  end
end
