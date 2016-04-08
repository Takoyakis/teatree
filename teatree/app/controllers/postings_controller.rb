class PostingsController < TeaInfoController

  before_action :authenticate_user!, only: :new

  def create
    @posting = Posting.new(category_id: posting_params[:category_id], name: posting_params[:name], gram: posting_params[:gram], temperature: posting_params[:temperature], time: posting_params[:time], experience: posting_params[:experience], coment: posting_params[:coment], user_id: current_user.id, image: posting_image[:image])

    if @posting.save
      render :file => "/postings/create.html.erb"
    else
      render :new
    end
  end

  def new
    @posting = Posting.new
  end

  def index
    @postings = Posting.all.limit(12)
  end

  def search
    @tea_record = Posting.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def destroy
    tea_record = Posting.find(params[:id])
    if tea_record.user_id == current_user.id
      tea_record.destroy
    end

    if tea_record.category_id == 0
      redirect_to controller: :black, action: :index
    elsif tea_record.category_id == 1
      redirect_to controller: :japanese, action: :index
    else tea_record.category_id == 2
      redirect_to controller: :chinese, action: :index
    end
  end

  def edit
    @tea_record = Posting.find(params[:id])
  end

  def update
    tea_record = Posting.find(params[:id])
    if tea_record.user_id == current_user.id
      tea_record.update(posting_params)
    end

    if tea_record.category_id == 0
      redirect_to controller: :black, action: :index
    elsif tea_record.category_id == 1
      redirect_to controller: :japanese, action: :index
    else tea_record.category_id == 2
      redirect_to controller: :chinese, action: :index
    end
  end


  private
  def posting_params
    params.permit(:category_id, :name, :gram, :temperature, :time, :experience, :coment, :user_id)
  end

  def posting_image
    params.require(:posting).permit(:image)
  end

end
