class Restaurant < ApplicationRecord
  validates :restaurant_name, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :telephone, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  validates :opening_time_mon, :closing_time_mon, :opening_time_tue, :closing_time_tue,
            :opening_time_wed, :closing_time_wed, :opening_time_thu, :closing_time_thu,
            :opening_time_fri, :closing_time_fri, :opening_time_sat, :closing_time_sat,
            :opening_time_sun, :closing_time_sun, presence: true
end
