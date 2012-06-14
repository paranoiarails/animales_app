class CreateOcupacions < ActiveRecord::Migration
  def change
    create_table :ocupacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
