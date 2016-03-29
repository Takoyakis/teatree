class JapaneseController < TeaInfoController

  def index
    @japanese = []
    posting_all = Posting.order("created_at DESC")

    posting_all.each do |ele|
      if ele.category_id == 1
        @japanese << ele
      end
    end
  end

end
