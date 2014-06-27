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
end
