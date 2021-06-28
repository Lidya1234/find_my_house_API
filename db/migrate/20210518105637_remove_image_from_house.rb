class RemoveImageFromHouse < ActiveRecord::Migration[6.0]
  def change
    remove_column :houses, :image, :string
  end
end
