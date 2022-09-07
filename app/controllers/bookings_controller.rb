class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @meme = Meme.find(params[:meme_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = 0
    @booking.meme = Meme.find(params[:meme_id])
    @booking.user = current_user
    if @booking.save
      redirect_to meme_booking_path(@memem, @booking)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :movie_id)
  end
end
