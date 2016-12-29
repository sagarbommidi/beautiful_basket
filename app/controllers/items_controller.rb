class ItemsController < ApplicationController
  before_action :authorize_admin

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    if item.save
      redirect_to admin_dashboard_path(), notice: 'Item Created successfully'
    else
      render 'new'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :image, :quantity)
  end
end
