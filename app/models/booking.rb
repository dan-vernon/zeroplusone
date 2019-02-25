class Booking < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :date, :presence: true
  # add validation about date being available- help (https://medium.com/lightthefuse/ruby-on-rails-date-validation-in-a-booking-and-disabling-dates-in-date-picker-3e5b4e9b4640)
  validates :user, presence: true

end
