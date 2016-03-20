class PostingController < ApplicationController

  def create
    Posting.create(name: posting_params[:name], gram: posting_params[:gram], temperature: posting_params[:temperature], time: posting_params[:time], experience: posting_params[:experience], coment: posting_params[:coment])
  end

  def new
  end

  def index
    @postings = Posting.all.limit(12)
  end
  

  private
  def posting_params
    params.permit(:name, :gram, :temperature, :time, :experience, :coment)
  end
end
