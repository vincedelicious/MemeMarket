class MemesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = 'title ILIKE :query OR category ILIKE :query OR description ILIKE :query'
      @memes = Meme.where(sql_query, query: "%#{params[:query]}%")
    else
      @memes = Meme.all
    end
  end

  def show
    @meme = Meme.find(params[:id])
    @bookings = Booking.where(user_id: current_user)
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
    redirect_to memes_path, status: :see_other
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    @meme.user = current_user
    if @meme.save
      redirect_to meme_path(@meme)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @meme = Meme.find(params[:id])
    @meme.title = meme_params[:title]
    @meme.category = meme_params[:category]
    @meme.price = meme_params[:price]
    @meme.save

    redirect_to meme_path(@meme)
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :category, :price, :photo)
  end
end
