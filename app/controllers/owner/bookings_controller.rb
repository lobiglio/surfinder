class Owner::BookingsController < ApplicationController
  def index
    @bookings = current_user.school.bookings
  end
end
