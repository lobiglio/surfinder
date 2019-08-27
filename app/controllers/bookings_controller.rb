class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
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
      respond_to do |format|
        format.html { redirect_to bookings_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js  # <-- idem
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_at, :end_at, :quantity, :pack_id)
  end
end
