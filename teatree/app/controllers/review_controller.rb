class ReviewController < ApplicationController

  def new
  end

  def create
    review = Review.new(review: review_params[:review], posting_id: review_params[:posting_id], user_id: current_user.id)

    if review.review == ""
      redirect_to :back, alert: 'コメントを入力してください'
    else
      review.save
      redirect_to :back, notice: 'コメントしました'
    end
  end


  private
  def review_params
    params.permit(:review, :posting_id, :user_id)
  end
end