class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :bio, :email, :handle, :name, :password_digest
end
