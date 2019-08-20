class Review < ApplicationRecord
  belongs_to :booking

  validates :content, length: { minimum: 15 }
  validates :rating, presence: true
end
