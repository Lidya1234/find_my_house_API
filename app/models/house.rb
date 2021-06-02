class House < ApplicationRecord
    has_many :favorites, class_name: "Favorite", foreign_key: "house_id"
    validates :name, presence: true
    validates :rank, presence: true
    validates :image, presence: true
  
end
