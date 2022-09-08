class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @memes = Meme.where { |meme| meme.user == current_user }
  end

  def my_memes
    @memes = Meme.where { |meme| meme.user == current_user }
  end

  def active_requests

  end

  def pending_requests
    @bookings = Booking.where(status: 0)
    @memes = Meme.all
  end
end
