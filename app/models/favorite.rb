class Favorite < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :house, class_name: 'House', foreign_key: 'house_id'
end
