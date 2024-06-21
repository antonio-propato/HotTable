class AddBidAmountToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :bid_amount, :decimal
  end
end
