class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :booking_size
      t.date :booking_date
      t.time :booking_time
      t.integer :booking_length
      t.string :booking_type
      t.decimal :booking_price
      t.string :booking_status
      t.string :special_requests
      t.references :client, foreign_key: true, null: true
      t.references :restaurant, foreign_key: true, null: true

      t.timestamps
    end
  end
end
