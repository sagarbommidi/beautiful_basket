class User < ApplicationRecord
  include Clearance::User
  validates :role_id, presence: true

  enum role_id: [:admin, :user]
  has_one :cart
  after_create :create_user_cart

  private
  def create_user_cart
    self.create_cart
  end
end
