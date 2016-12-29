class SelectedItem < ApplicationRecord
  belongs_to :itemable, polymorphic: true
  belongs_to :item

  default_scope { includes(:item) }
  delegate :name, :price, to: :item

  validate :check_available_quantity

  def sub_total
    quantity * item.price
  end

  private

  def check_available_quantity
    return true if quantity <= item.quantity
    errors[:base] << 'Number of Items not available in the Inventory' 
  end
end
