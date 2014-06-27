class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :name, :password_salt, :persistence_token, :password_confirmation, :password
  acts_as_authentic do |c|
  	c.login_field = 'email'
  end
  def self.find_by_username(login)
    User.find_by_name(login)
  end
end
