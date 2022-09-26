class User < ApplicationRecord
  has_secure_password :validations => false
  validates_confirmation_of :password_digest
  validates_presence_of :password_digest, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email


end
