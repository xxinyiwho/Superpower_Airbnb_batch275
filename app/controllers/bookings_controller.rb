class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_strong_params)
    if @booking.save
      redirect_to
    else
      render :new
    end
  end

  private

  def booking_strong_params
    params.require(:booking).permit (:start_date, :end_date, :start_date, :status)
  end

end
