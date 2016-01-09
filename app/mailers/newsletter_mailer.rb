class NewsletterMailer < ApplicationMailer

  def welcome_email(newsmailer)
    @user = newsmailer
    mail(to: @user.email, subject: "Welcome to Foreversoaps!")
  end
end
