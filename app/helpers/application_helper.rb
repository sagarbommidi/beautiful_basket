module ApplicationHelper

  def cart_items_count
    current_user.cart.cart_items.count
  end
end
