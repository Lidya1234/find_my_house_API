class House < ApplicationRecord
    validates :name, presence: true
    validates :rank, presence: true
    validates :image, presence: true
    belongs_to: user
end
