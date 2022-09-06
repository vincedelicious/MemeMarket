class MemesController < ApplicationController
  def index
    @meme = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def destroy
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
  end

  def edit
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :category, :price)
  end
end
