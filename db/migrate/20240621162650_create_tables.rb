class CreateTables < ActiveRecord::Migration[7.1]
  def change
    create_table :tables do |t|
      t.string :table_number
      t.integer :capacity
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
