class ChineseController < TeaInfoController

  def index
    @chinese = []
    posting_all = Posting.order("created_at DESC")

    posting_all.each do |ele|
      if ele.category_id == 2
        @chinese << ele
      end
    end
  end

end
