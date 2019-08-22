class Booking < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user
  belongs_to :pack
  belongs_to :school

  validates :begin_at, presence: true
  validates :end_at, presence: true
  validates :quantity, presence: true

  enum progress: [:pending, :accepted, :refused]

end
