class Pack < ApplicationRecord
  has_many :bookings
  belong_to :school

  validates :price, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
end
