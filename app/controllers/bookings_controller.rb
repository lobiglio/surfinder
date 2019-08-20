class BookingsController < ApplicationController
  def index
    @booking = Booking.all
  end

  def new
    @school = School.find(params[:school_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @school = School.find(params[:school_id])
    @booking.school = @school
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_at, :end_at)
  end
end
