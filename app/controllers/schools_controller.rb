class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
    # @review = Review.find(@school.pack.booking.review)
  end
end
