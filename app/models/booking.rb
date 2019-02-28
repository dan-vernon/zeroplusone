class Booking < ApplicationRecord
  # belongs_to :user

  belongs_to :hero, class_name: :User, foreign_key: "hero_id"
  belongs_to :zero, class_name: :User, foreign_key: "zero_id"
  has_many :reviews
  validates :description, presence: true
  validates :date, presence: true
  # validate :availability_check
  # add validation about date being available- help (https://medium.com/lightthefuse/ruby-on-rails-date-validation-in-a-booking-and-disabling-dates-in-date-picker-3e5b4e9b4640)
  validates :zero, :hero, presence: true

  def availability_check
  # unclear if this will work - test when ready to implement!
    errors.add(:date, "date not available") if hero.bookings_as_hero.where(date: date).any?
  end
end
