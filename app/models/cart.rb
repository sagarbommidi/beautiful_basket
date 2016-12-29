class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, as: :itemable
  has_many :items, through: :cart_items

end
