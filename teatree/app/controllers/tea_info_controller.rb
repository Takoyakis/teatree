class TeaInfoController < ApplicationController

  def show
    @tea = Posting.find(params[:id])
    @posting_user = @tea.user
    @review = @tea.reviews.includes(:user)
  end

end
