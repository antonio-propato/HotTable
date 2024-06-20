class Restaurant < ApplicationRecord
  validates :restaurant_name, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :telephone, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  # Additional model logic goes here
end
