class MemesController < ApplicationController
  def index
    @memes = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
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
    @meme.title = meme_params.title
    @meme.category = meme_params.category
    @meme.price = meme_params.price
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :category, :price)
  end
end
