class OrdersController < ApplicationController

  def create
    current_user.place_order
    redirect_to user_dashboard_path, notice: 'Order placed successfully.'
  end

  private

end
