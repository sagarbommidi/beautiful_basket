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

  def edit
    @item = item
  end

  def update
    if item.update_attributes(item_params)
      redirect_to admin_dashboard_path(), notice: 'Item Updated successfully'
    else
      render 'edit'
    end
  end

  def destroy
    item.destroy
    redirect_to admin_dashboard_path(), notice: 'Item Deleted successfully'
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :image, :quantity)
  end

  def item
    @item ||= Item.find(params.require(:id))
  end
end
