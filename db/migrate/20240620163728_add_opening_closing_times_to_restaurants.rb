class AddOpeningClosingTimesToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :opening_time_mon, :time
    add_column :restaurants, :closing_time_mon, :time
    add_column :restaurants, :opening_time_tue, :time
    add_column :restaurants, :closing_time_tue, :time
    add_column :restaurants, :opening_time_wed, :time
    add_column :restaurants, :closing_time_wed, :time
    add_column :restaurants, :opening_time_thu, :time
    add_column :restaurants, :closing_time_thu, :time
    add_column :restaurants, :opening_time_fri, :time
    add_column :restaurants, :closing_time_fri, :time
    add_column :restaurants, :opening_time_sat, :time
    add_column :restaurants, :closing_time_sat, :time
    add_column :restaurants, :opening_time_sun, :time
    add_column :restaurants, :closing_time_sun, :time
  end
end
