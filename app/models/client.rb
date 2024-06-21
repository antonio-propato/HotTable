class Client < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :bids, dependent: :destroy  # Assuming clients can have multiple bids
end
