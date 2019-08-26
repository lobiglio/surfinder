class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pack
  has_many :reviews, dependent: :destroy

  validates :begin_at, presence: true
  validates :end_at, presence: true
  validates :quantity, presence: true

  enum progress: [:pending, :accepted, :refused]

end
