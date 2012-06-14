class CreateProbos < ActiveRecord::Migration
  def change
    create_table :probos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
