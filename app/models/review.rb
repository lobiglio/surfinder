class Review < ApplicationRecord
  belong_to :booking

  validates :content, length: { minimum: 15 }
  validates :rating, presence: true
end
