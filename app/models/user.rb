class User < ActiveRecord::Base
  has_secure_password
  has_many :library_users
  has_many :libraries, through: :library_users
end
