class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.integer :telephone, null: false
      t.string :email, null: false
      t.integer :capacity, null: false

      t.timestamps
    end

    add_index :restaurants, :email, unique: true
    add_index :restaurants, :telephone, unique: true
  end
end
