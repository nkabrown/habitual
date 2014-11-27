class UsersController < ApplicationController
 
  expose(:user, attributes: :user_params)
  expose(:mottos) { user.mottos }
  expose(:motto)

  def new

  end

  def create
    if user.save
      flash[:notice] = "Welcome to Habitual!"
      redirect_to user_path(user)
    else
      flash[:alert] = "We've encountered a problem. Please try again."
      render :new
    end
  end

  def show

  end

  def edit 

  end

  def update
    if user.save
      flash[:notice] = "You have updated your account."
      redirect_to user_path(user)
    else
      flash[:alert] = "We've encountered a problem. Please try again."
      render :edit
    end
  end

  def destroy
    user.destroy
    redirect_to root_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
