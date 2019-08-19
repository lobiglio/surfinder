class Answer < ApplicationRecord
  belong_to :review

  validates :content, length: { minimum: 15 }
end
