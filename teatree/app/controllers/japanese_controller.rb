class JapaneseController < ApplicationController

  def index
    @japanese = Posting.all.limit(12)
  end

  def show
  end
  
end
