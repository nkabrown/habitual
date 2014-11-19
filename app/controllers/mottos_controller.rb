class MottosController < ApplicationController

  before_action :set_user, only: [:new, :create, :edit, :update]

  def new

  end

  def create
    @motto = @user.mottos.new(motto_params)
    if @motto.save
      flash[:notice] = "You've created your own motto."
      redirect_to user_path(@user)
    else
      flash[:alert] = "We've encountered a problem."
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
  
  private

    def motto_params
      params.require(:motto).permit(:body, :id)
    end

    def set_user
      @user = User.find(params[:user_id])
    end

end
