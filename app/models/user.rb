class User < ApplicationRecord
  has_secure_password :validations => false
  validates_confirmation_of :password_digest
  validates_presence_of :password_digest, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret (password)
      user
    else
      nil
    end
  end

end
