class Item < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}

  scope :by_quantity, -> { order(quantity: :asc) }
end
