class Pack < ApplicationRecord
  has_many :bookings
  belongs_to :school

  validates :price, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
end
