class CreateDinas < ActiveRecord::Migration
  def change
    create_table :dinas do |t|
      t.string :nombre
      t.integer :edad

      t.timestamps
    end
  end
end
