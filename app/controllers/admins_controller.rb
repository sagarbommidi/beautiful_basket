class AdminsController < ApplicationController
  before_action :authorize_admin

  def dashboard
    @items = Item.by_quantity
  end
end
