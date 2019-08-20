class School < ApplicationRecord
  belongs_to :user
  has_many :packs

  validates :name, uniqueness: { scope: :address }
  validates :address, presence: true
  validates :description, presence: true
  validates :main_photo, presence: true
  validates :language, presence: true
  validates :level, presence: true
end
