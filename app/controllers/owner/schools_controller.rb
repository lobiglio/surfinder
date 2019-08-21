class Owner::SchoolsController < ApplicationController
  def show
    @school = current_user.school
  end

  def new
    @school = School.new
  end
end
