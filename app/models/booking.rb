class Booking < ApplicationRecord
  has_many :reviews
  belong_to :user
  belong_to :pack

  validates :begin_at, presence: true
  validates :end_at, presence: true
end
