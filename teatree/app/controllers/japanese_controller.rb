class JapaneseController < ApplicationController

  def index
    @japanese = []
    posting_all = Posting.all

    posting_all.each do |ele|
      if ele.category_id == 1
        @japanese << ele
      end
    end
  end

  def show
  end
  
end