class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @memes = Meme.where { |meme| meme.user == current_user }
  end
end
