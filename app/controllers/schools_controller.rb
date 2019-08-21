class SchoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search]
      @schools = School.near(params[:search][:location], 150)
    else
      @schools = School.geocoded
    end
    @markers = @schools.map do |school|
      {
        lat: school.latitude,
        lng: school.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { school: school }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def show
    @school = School.find(params[:id])
    # @review = Review.find(@school.pack.booking.review)
  end
end

private

def set_school
  @school = School.find(params[:id])
end
