class GoalsController < ApplicationController

  expose(:user)
  expose(:goals) { user.goals }
  expose(:goal, attributes: :goal_params)

  def new
  end

  def create
    if goal.save
      flash[:notice] = "You've set a new goal."
      redirect_to user_path(user)
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
