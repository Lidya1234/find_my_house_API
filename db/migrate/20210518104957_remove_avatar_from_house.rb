class RemoveAvatarFromHouse < ActiveRecord::Migration[6.0]
  def change
    remove_column :houses, :avatar, :string
  end
end
