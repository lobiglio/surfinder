class Booking < ApplicationRecord
  has_many :reviews
  belong_to :user
  belong_to :pack
end
