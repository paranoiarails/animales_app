class AddDinoToDinas < ActiveRecord::Migration
  def change
    add_column :dinas, :dino_id, :integer

  end
end
