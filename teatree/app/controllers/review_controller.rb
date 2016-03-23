class ReviewController < ApplicationController

  def new
  end

  def create
    if params[:black_id]
      Review.create(review: review_params[:review], posting_id: params[:black_id], user_id: current_user.id)
      redirect_to :back, alert: 'コメントを入力してください'
    elsif params[:japanese_id]
      Review.create(review: review_params[:review], posting_id: params[:japanese_id], user_id: current_user.id)
      redirect_to :back, alert: 'コメントを入力してください'
    else params[:chinese_id]
      Review.create(review: review_params[:review], posting_id: params[:chinese_id], user_id: current_user.id)
      redirect_to :back, alert: 'コメントを入力してください'
    end
  end


  private
  def review_params
    params.permit(:review, :posting_id, :user_id)
  end
end