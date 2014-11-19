class UsersController < ApplicationController
 
  expose(:user, attributes: :user_params)

  def new
  end

  def create
    if user.save
      flash[:notice] = "Welcome to Prolific!"
      redirect_to user_path(user)
    else
      flash[:alert] = "We've encountered a problem. Please try again."
      render :new
    end
  end

  def show
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
