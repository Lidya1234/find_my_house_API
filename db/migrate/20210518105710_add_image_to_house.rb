class AddImageToHouse < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :image, :string, after: 'rank'
  end
end
