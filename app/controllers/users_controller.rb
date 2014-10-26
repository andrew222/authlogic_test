class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      format.html do
        if @user.save
          flash[:notice] = "Please check our email to active you account."
          Notifier.activity_email(@user).deliver
          current_user_session.destroy
          redirect_to root_path
        else
          render "new"
        end
      end
    end
  end

  def edit
  end

  def show
  end

  def destroy
  end
  def account_activity
      @user = User.find_by_persistence_token(params[:id])
      unless @user.blank?
          @user.update_attribute("active", true)
          flash[:notice] = "Your account is activity."
          redirect_to welcome_path
      else
          flash[:error] = "The token is invalid."
          redirect_to root_path
      end
  end
end
