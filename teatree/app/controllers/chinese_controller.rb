class ChineseController < ApplicationController

  def index
    @chinese = []
    posting_all = Posting.all

    posting_all.each do |ele|
      if ele.category_id == 2
        @chinese << ele
      end
    end
  end

  def show
  end

end
