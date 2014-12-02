class UserMailer < ActionMailer::Base
  default from: "nkabrown@gmail.com"

  def goal_email(user)
    @user = user
    mail(to: @user.email, subject: "Update from Habitual")
  end

end
