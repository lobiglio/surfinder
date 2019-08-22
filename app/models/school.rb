class School < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :packs
  has_many :bookings, through: :packs
  has_many :reviews, through: :bookings

  has_many :packs, dependent: :destroy

  validates :name, uniqueness: { scope: :address }
  validates :address, presence: true
  validates :description, presence: true
  validates :main_photo, presence: true
  validates :language, presence: true
  validates :level, presence: true
  validates :email, presence: true, uniqueness: true

  mount_uploader :main_photo, PhotoUploader
end
