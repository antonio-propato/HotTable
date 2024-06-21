class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.decimal :bid_amount
      t.timestamp :bid_time
      t.references :client, foreign_key: true, null: true
      t.references :booking, foreign_key: true, null: true

      t.timestamps
    end
  end
end
