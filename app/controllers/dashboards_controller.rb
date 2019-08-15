class DashboardsController < ApplicationController

   def show
    @superpowers = Superpower.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end

end
