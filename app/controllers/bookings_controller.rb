class BookingsController < ApplicationController

  def new
    @superpower = Superpower.find(params[:superpower_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_strong_params)
    @superpower = Superpower.find(params[:superpower_id])
    @user = User.find(params[:user_id])
    if @booking.save
      redirect_to
    else
      render :new
    end
  end

  private

  def booking_strong_params
    params.require(:booking).permit(:start_date, :end_date, :start_date, :status, :superpower_id, :user_id)
  end

end

