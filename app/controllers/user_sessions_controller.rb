class UserSessionsController < ApplicationController
  def index
  end

  def new
    @user_session = UserSession.new
  end

  def edit
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to welcome_path
    else
      render :action => :new
    end
  end
  def show
  end

  def destroy
    current_user_session.destroy
    redirect_to new_user_session_url
  end

  def last_request_update_allowed?
    action_name != "check_session"
  end

  def check_session
    respond_to do |format|
      format.html do
        if current_user_session.stale?
          render :text => login_path
        else
          render nothing: true
        end
      end
    end
  end
end
