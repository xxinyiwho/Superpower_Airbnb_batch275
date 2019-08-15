class DashboardsController < ApplicationController

   def show
    @superpowers = Superpower.where(user: current_user) if current_user.superpowers.any?
    @bookings = Booking.where(user: current_user) if current_user.bookings.any?
  end

end
