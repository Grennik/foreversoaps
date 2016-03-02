class Newusermailer < ApplicationMailer

  def new_user_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Foreversoaps!")
  end
end
