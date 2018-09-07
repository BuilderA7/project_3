class UsermailMailer < ApplicationMailer
  
  default from: "atbisrael@gmail.com"

  def signup_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to the App", body: "welcome to the app!")
  end

end
