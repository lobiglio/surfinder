class Answer < ApplicationRecord
  belongs_to :review

  validates :content, length: { minimum: 15 }
end
