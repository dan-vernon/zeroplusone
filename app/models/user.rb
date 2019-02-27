class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :recoverable, :rememberable, :validatable, :lockable, :timeoutable, :trackable, :omniauthable

  has_many :bookings_as_hero, :class_name => 'Booking', :foreign_key => 'hero_id'
  has_many :bookings_as_zero, :class_name => 'Booking', :foreign_key => 'zero_id'
  has_many :reviews
  validates :first_name, :last_name, :location, presence: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, uniqueness: true
  devise :database_authenticatable, :registerable
  mount_uploader :photo, PhotoUploader
end
