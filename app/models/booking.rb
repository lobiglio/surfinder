class Booking < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :pack

  validates :begin_at, presence: true
  validates :end_at, presence: true

  enum progress: [:pending, :accepted, :refused]

end
