class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception
  before_action :require_login

  protected

  def authorize_admin
    unless current_user.admin?
      redirect_to root_path, notice: "You don't have the access to this page."
    end
  end
end
