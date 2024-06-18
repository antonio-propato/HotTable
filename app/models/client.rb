class Client < ApplicationRecord
  validates :first_name, :last_name, :telephone_number, :email, :DOB, presence: true
end
