class User < ActiveRecord::Base
  has_secure_password

  def password_verified(password)
    verified = authenticate(password)
    errors.add(:password, 'is invalid') unless verified
    verified
  end
  
end