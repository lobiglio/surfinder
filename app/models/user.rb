class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { customer: 0, owner: 1 }

  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true

  mount_uploader :avatar, PhotoUploader
end
