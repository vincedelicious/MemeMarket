class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @memes = Meme.where(user: current_user)
    @bookings_active = Booking.where(status: 1)
    @bookings_pending = Booking.where(status: 0)
  end
end
