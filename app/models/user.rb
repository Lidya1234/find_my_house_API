class User < ApplicationRecord
  has_secure_password
  has_many :favorites, class_name: "Favorite", foreign_key: "user_id"
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 4 }
end
