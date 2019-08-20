class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
  end
end

private

def set_school
  @school = School.find(params[:id])
end
