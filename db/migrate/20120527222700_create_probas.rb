class CreateProbas < ActiveRecord::Migration
  def change
    create_table :probas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
