class AddNuevosToDiarios < ActiveRecord::Migration
  def change
    add_column :diarios, :nuevo, :text

  end
end
