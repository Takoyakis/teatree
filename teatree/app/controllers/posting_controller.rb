class PostingController < ApplicationController

  before_action :authenticate_user!, only: :new

  def create
    Posting.create(category_id: posting_params[:category_id], name: posting_params[:name], gram: posting_params[:gram], temperature: posting_params[:temperature], time: posting_params[:time], experience: posting_params[:experience], coment: posting_params[:coment])
  end

  def new
  end

  def index
    @postings = Posting.all.limit(12)
  end


  private
  def posting_params
    params.permit(:category_id, :name, :gram, :temperature, :time, :experience, :coment)
  end

end
