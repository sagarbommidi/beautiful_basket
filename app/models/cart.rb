class Cart < ApplicationRecord
  belongs_to :user

  has_many :cart_items, as: :itemable, class_name: "SelectedItem"
  has_many :items, through: :cart_items, source: :item

  default_scope { includes(:cart_items) }
end
