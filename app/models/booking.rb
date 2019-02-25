class Booking < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :date, :presence: true
  validates :user, presence: true


end
