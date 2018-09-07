class ApplicationMailer < ActionMailer::Base

  def test_email(user)
    @user = user
    sender     = "atbisrael@gmail.com"
    receiver   = @user.email 
    mail from: sender, to: receiver, subject: "Hello!", body: "World!!"
  end
end
  # default from: 'atbisrael@mail.com'
  # layout 'mailer'
      

