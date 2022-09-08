class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @meme = Meme.find(params[:meme_id])
  end

  def show
    @booking = Booking.find(params[:id])
    @meme = Meme.find(params[:meme_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @meme = Meme.find(params[:meme_id])
    @booking.status = 0
    @booking.meme = Meme.find(params[:meme_id])
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
