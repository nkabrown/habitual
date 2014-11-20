class MottosController < ApplicationController

  expose(:user)
  expose(:mottos) { user.mottos }
  expose(:motto, attributes: :motto_params)

  def new

  end

  def create
    if motto.save
      flash[:notice] = "You've created your own motto."
      redirect_to user_path(user)
    else
      flash[:alert] = "We've encountered a problem."
      render :new
    end
  end

  def edit

  end

  def update
    if motto.save
      redirect_to user_path(user)
    else
      render :edit
    end
  end

  def destroy
    motto.destroy
    redirect_to user_path(user)
  end
  
  private

    def motto_params
      params.require(:motto).permit(:body, :id)
    end

end
