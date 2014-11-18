class GoalsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @goal = @user.goals.new(goal_params)
    if @goal.save
      flash[:notice] = "You've set a new goal."
      redirect_to user_path(@user)
    else
      flash[:alert] = "We've encountered a problem."
      render :new
    end
  end

  private

    def goal_params
      params.require(:goal).permit(:body, :step, :routine, :id)
    end

end
