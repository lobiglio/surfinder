class Owner::PacksController < ApplicationController
  def index
    @packs = current_user.packs
  end

  def new
    @school = School.find(params[:school_id])
    @pack = Pack.new
  end

  def create
    @pack = Pack.new(pack_params)
    @school = School.find(params[:school_id])
    @pack.school = @school
    if @pack.save
      redirect_to owner_school_path(@school)
    else
      render :new
    end
  end

  private

  def pack_params
    params.require(:pack).permit(:price, :content, :title, :max_persons, :description)
  end
end
