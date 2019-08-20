class SchoolsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @school = School.find(params[:id])
  end
end
