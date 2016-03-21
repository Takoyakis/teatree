class ChineseController < ApplicationController

  def index
      @chinese = Posting.all.limit(12)
  end

  def show
  end

end
