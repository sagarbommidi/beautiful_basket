class UsersController < Clearance::UsersController

  def dashboard
  end

  private

  def user_params
    params[:user].permit(:email, :password, :full_name)
  end
end
