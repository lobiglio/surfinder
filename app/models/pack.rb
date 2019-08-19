class Pack < ApplicationRecord
  has_many :bookings
  belong_to :school
end
