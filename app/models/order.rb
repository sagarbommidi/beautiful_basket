class Order < ApplicationRecord
  validates :user_id, :placed_on, presence: true

  has_many :order_items, as: :itemable, class_name: "SelectedItem"
  has_many :items, through: :order_items
  belongs_to :user
  belongs_to :delivery_address

end
