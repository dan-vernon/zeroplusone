class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @zero = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.hero = User.find(params[:user_id])
    @booking.zero = current_user
    if @booking.save
      redirect_to user_booking_path(@booking.hero, @booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to availability_index
  end

  private

  def booking_params
    params.require(:booking).permit(:hero_id, :zero_id, :date, :description)
  end
end
