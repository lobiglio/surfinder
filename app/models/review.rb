class Review < ApplicationRecord
  belongs_to :booking

  validates :content, length: { minimum: 15 }, presence: true
  validates :rating, presence: true
end
