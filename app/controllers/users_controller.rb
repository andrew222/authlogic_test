class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      format.html do
        if @user.save
          redirect_to welcome_path
        else
          render_to "new"
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
end
