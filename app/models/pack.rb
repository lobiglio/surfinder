class Pack < ApplicationRecord
  belongs_to :school
  has_many :bookings, dependent: :destroy

  validates :price, presence: true
  validates :description, presence: true
  validates :max_persons, presence: true
end
