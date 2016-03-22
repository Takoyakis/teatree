class ReviewController < ApplicationController

  def new
  end

  def create
    Review.create(review: review_params[:review])
  end


  private
  def review_params
    params.permit(:review)
  end
end