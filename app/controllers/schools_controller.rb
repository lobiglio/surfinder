class SchoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @schools = School.geocoded

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

    api = SurfForecastService.new("1175")
    @data = api.call

    @review = Review.new
  end
end

private

def set_school
  @school = School.find(params[:id])
end
