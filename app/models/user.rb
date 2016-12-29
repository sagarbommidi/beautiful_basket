class User < ApplicationRecord
  include Clearance::User
  validates :role_id, presence: true

  enum role_id: [:admin, :user]

end
