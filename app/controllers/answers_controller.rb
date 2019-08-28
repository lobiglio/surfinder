class AnswersController < ApplicationController
  def index
  end

  def new
    @review = Review.find(params[:review_id])
    @school = School.find(@review.booking.pack.school_id)
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @review = Review.find(params[:review_id])
    @answer.review = @review
    @school = School.find(@review.booking.pack.school_id)
    if @review.save
      redirect_to owner_school_path(@school)
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
