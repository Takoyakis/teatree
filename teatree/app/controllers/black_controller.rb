class BlackController < ApplicationController

  def index
    @black = []
    posting_all = Posting.all

    posting_all.each do |ele|
      if ele.category_id == 0
        @black << ele
      end
    end

  end

   def show
   end

   
end
