class CreateProbasProbos < ActiveRecord::Migration
  def change
    create_table :probas_probos, :id =>false do |t|
      t.integer :proba_id
      t.integer :probo_id

    end
  end
end
