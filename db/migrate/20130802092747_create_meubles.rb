class CreateMeubles < ActiveRecord::Migration
  def change
    create_table :meubles do |t|
      t.string :name
      t.string :description
      t.string :link
      t.string :price

      t.timestamps
    end
  end
end
