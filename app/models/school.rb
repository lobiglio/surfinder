class School < ApplicationRecord
  belong_to :user
  has_many :packs
end
