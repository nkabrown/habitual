class SessionsController < ApplicationController

  expose(:user)

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      flash[:notice] = "You've been logged in. Welcome back."
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:alert] = "There was a problem logging you in. Please try again."
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've been logged out successfully."
    redirect_to root_path
  end

end
