class BookingsController < ApplicationController
  # def new
  #   @superpower = Superpower.find(params[:superpower_id])
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new(booking_strong_params)
    @superpower = Superpower.find(params[:superpower_id])
    @booking.superpower = @superpower
    @booking.user = current_user

    # @booking.superpower = @superpower
    # @booking.user = @user
    @booking.save

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
