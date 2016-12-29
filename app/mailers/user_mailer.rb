class UserMailer < ApplicationMailer

  def order_confirmation(user, order)
    @user = user
    @order = order
    mail(subject: 'Order has placed!', to: @user.email)
  end
end
