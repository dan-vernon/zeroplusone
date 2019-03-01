require 'date'

class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @users = User.where(hero: true)
  end

  def show
    @user = User.find(params[:id])
    @user.hero ? @bookings = @user.bookings_as_hero : @bookings = @user.bookings_as_zero
    @skills = @user.skills
    # @user_dob = helpers.age_in_years(@user)
  end

  # def self.age
  #   # @user = User.find(params[:id])
  #   dob = @user.dob
  #   age_in_days = (Date.today - dob)
  #   return (age_in_days / 365).floor
  # end
end
