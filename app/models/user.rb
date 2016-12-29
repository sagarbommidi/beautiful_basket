class User < ApplicationRecord
  include Clearance::User
  validates :role_id, presence: true

  enum role_id: [:admin, :user]
  has_one :cart
  has_many :orders
  after_create :create_user_cart

  def place_order
    new_order = orders.create(placed_on: DateTime.now)
    cart.cart_items.each do |selected_item|
      selected_item.itemable = new_order
      selected_item.save
    end
    UserMailer.order_confirmation(self, new_order).deliver_now
  end

  private
  def create_user_cart
    self.create_cart
  end
end
