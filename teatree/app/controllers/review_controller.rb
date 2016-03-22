class ReviewController < ApplicationController

  def new
  end

  def create
    if Posting.find(params[:black_id]).category_id == 0
      Review.create(review: review_params[:review], posting_id: params[:black_id], user_id: current_user.id)
      redirect_to :back
    elsif Posting.find(params[:japanese_id]).category_id == 1
      Review.create(review: review_params[:review], posting_id: params[:japanese_id], user_id: current_user.id)
      redirect_to :back
    else Posting.find(params[:chinese_id]).category_id == 2
      Review.create(review: review_params[:review], posting_id: paarams[:chinese_id], user_id: current_user.id)
      redirect_to :back
    end
  end


  private
  def review_params
    params.permit(:review, :posting_id, :user_id)
  end
end