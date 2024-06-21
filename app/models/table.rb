class Table < ApplicationRecord
  belongs_to :restaurant

  validates :table_number, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
