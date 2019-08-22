class Pack < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :school

  validates :price, presence: true
  validates :description, presence: true
  validates :max_persons, presence: true
end
