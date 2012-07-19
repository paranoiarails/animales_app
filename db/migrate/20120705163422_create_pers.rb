class CreatePers < ActiveRecord::Migration
  def change
    create_table :pers do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
