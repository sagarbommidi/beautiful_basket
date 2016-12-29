class UsersController < Clearance::UsersController

  def dashboard
    @items = Item.available
  end

  private

  def user_params
    params[:user].permit(:email, :password, :full_name)
  end
end
