class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :reviews, through: :bookings
#   has_many :answers, through: :bookings, through: :reviews A voitr comment ça s'écrit
end
