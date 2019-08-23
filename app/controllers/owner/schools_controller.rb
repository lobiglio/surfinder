class Owner::SchoolsController < ApplicationController
  def show
    @school = current_user.school
    @reviews = current_user.school.reviews

    @data = SurfForecastService.new("1531").call
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    @school.user = current_user
    if @school.save
      redirect_to owner_school_path(@school)
    else
      render :new
    end
  end

  def edit
    @school = current_user.school
  end

  def update
    @school = current_user.school
    @school.update(school_params)
    redirect_to owner_school_path(@school)
  end

  private

  def school_params
    params.require(:school).permit(:name, :address,
     :description, :main_photo, :language, :level,
    :email, :photo1, :photo2, :phone_number)
  end
end
