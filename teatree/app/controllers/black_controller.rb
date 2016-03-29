class BlackController < TeaInfoController

  def index
    @black = []
    posting_all = Posting.order("created_at DESC")

    posting_all.each do |ele|
      if ele.category_id == 0
        @black << ele
      end
    end

  end

end
