class User < ActiveRecord::Base
  has_secure_password

  before_save { self.email = email.downcase }
  validates(:name, presence: true)
  validates(:email, presence: true)
  validates :password, length: { minimum: 6 }
end
