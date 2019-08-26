class Review < ApplicationRecord
  belongs_to :booking

  has_one :answer

  validates :content, length: { minimum: 15 }, presence: true
  validates :rating, presence: true
end
