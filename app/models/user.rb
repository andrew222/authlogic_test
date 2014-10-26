class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :name, :password_salt, :persistence_token, :password_confirmation, :password
  acts_as_authentic do |c|
    c.logged_in_timeout(15.minutes)
  end

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.find_by_username(login)
    User.find_by_name(login)
  end
  
  def active?
      active
  end
end
