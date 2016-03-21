class BlackController < ApplicationController

  def index
    @black = Posting.all.limit(12)
  end

   def show
   end

   
end
