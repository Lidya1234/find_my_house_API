class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :rank
      t.string :image
      t.string :price

      t.timestamps
    end
  end
end
