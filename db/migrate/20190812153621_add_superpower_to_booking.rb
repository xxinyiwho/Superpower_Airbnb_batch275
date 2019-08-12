class AddSuperpowerToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :superpower, foreign_key: true
  end
end
