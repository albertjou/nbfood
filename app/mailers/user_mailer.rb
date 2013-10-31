class UserMailer < ActionMailer::Base
  default from: "albert@neighbourfod.com"

  def welcome_email(user)
    @user = user
    @url = "http://www.neighbourfood.com"
    mail(:to => user.email, :subject => "Welcome to Neighbourfood")
  end
end
