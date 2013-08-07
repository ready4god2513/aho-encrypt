class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  def password_salt
    'no salt'
  end
  
  def password_salt=(new_salt)
  end
end
