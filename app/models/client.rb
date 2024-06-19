class Client < ApplicationRecord
  validates :first_name, :last_name, :telephone_number, :email, :DOB, presence: true
  # has_many :bookings, dependent: :destroy
end
