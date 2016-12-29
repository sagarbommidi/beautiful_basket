class CartsController < ApplicationController

  def add_item
    item = cart_items.build(cart_item_params)
    flash[:notice] = item.save ? 'Item added successfully' : 'Problem in adding Item to cart'
    redirect_to cart_path
  end

  def index
    @cart_items = cart_items
  end

  private

  def cart_items
    @items ||= current_user.cart.cart_items
  end

  def cart_item_params
    params.permit(:item_id, :price)
  end
end
