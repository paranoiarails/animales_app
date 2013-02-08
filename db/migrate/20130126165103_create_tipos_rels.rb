class CreateTiposRels < ActiveRecord::Migration
  def change
    create_table :tipos_rels do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
