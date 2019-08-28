class Owner::BookingsController < ApplicationController
  def index
    @bookings = current_user.school.bookings
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(progress: params[:progress].to_i)

    redirect_to owner_bookings_path
  end
end
