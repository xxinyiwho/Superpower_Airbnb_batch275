class BookingsController < ApplicationController
  # def new
  #   @superpower = Superpower.find(params[:superpower_id])
  #   @booking = Booking.new
  # end

  def index
    @bookings = Booking.all
  end

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

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_strong_params)
    redirect_to root_path
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.status = "Confirmed"
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end


  private

  def booking_strong_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
