class Owner::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end
end
