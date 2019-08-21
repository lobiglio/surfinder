class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @school = School.find(params[:school_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @school = School.find(params[:school_id])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_at, :end_at, :quantity, :pack_id)
  end
end
