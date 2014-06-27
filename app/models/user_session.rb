class UserSession < Authlogic::Session::Base
  # attr_accessible :title, :body
  find_by_login_method :find_by_username
end
