class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, :last_name, :location, :role, presence: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
end
