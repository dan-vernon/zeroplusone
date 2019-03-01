class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :content, :ratings, presence: true
  validates :ratings, inclusion: { in: (1..5) }
end
