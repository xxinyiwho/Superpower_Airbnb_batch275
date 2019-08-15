class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :superpower
  after_create :calculate_total_price

  def calculate_total_price
    days = self.end_date - self.start_date
    self.total_price = days * self.superpower.price
    self.save
  end


end
