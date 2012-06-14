class AddPersonaToPerfils < ActiveRecord::Migration
  def change
    add_column :perfils, :persona_id, :integer

  end
end
