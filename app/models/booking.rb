class Booking < ApplicationRecord
  belongs_to :client
  belongs_to :restaurant
  belongs_to :bid, optional: true  # Assuming a booking can optionally have a bid

  validates :booking_date, presence: true
  validates :booking_time, presence: true
end
