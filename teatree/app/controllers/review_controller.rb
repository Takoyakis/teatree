class ReviewController < ApplicationController

  def new
  end

  def create
    binding.pry
    Review.create(review: review_params[:review], posting_id: review_params[:], user_id: current_user.id)
    redirect_to :back
  end


  private
  def review_params
    params.permit(:review, :posting_id, :user_id)
  end
end