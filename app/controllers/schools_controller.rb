class SchoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
