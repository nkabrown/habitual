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

  def edit

  end

  def update
    if goal.save
      flash[:notice] = "Your goal has been updated."
      redirect_to user_path(user)
    else
      flash[:alert] = "We've encountered a problem."
      render :edit
    end
  end

  def destroy
    goal.destroy
    redirect_to user_path(user)
  end

  def email
    UserMailer.goal_email(user).deliver
    redirect_to user_path(user)
  end

  private

    def goal_params
      params.require(:goal).permit(:body, :step, :routine, :id)
    end

end
