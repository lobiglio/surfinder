class Owner::SchoolsController < ApplicationController
  def show
    @school = current_user.school
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

  private

  def school_params
    params.require(:school).permit(:name, :address, :description, :main_photo, :language, :level, :email)
  end
end
