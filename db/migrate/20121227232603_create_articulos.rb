class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
