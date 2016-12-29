class SelectedItem < ApplicationRecord
  belongs_to :itemable, polymorphic: true
  belongs_to :item

  default_scope { includes(:item) }
  delegate :name, :price, to: :item

  def sub_total
    quantity * item.price
  end
end
