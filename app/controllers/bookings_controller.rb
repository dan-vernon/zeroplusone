class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_show_path
    else
      render :new
  end

  def update
  end

  def edit

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to availability_index
  end

  private

  def booking_params
    params.require(:booking).permit(:user)
  end
end
