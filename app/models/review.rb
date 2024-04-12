class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :comment, presence: true, length {
    maximum: 250
  }
end
