class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user_session, :current_user

  
  def require_user
    unless current_user
      respond_to do |format|
        format.html do 
          flash[:notice] = "Please login first"
          redirect_to login_url
          return false
        end
      end
    end
  end
  
  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end
end
