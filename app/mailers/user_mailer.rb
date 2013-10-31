class UserMailer < ActionMailer::Base
  default from: "albert@neighbourfod.com"

  def welcome_email(user)
    @user = user
    @url = "http://www.neighbourfood.com"
    mail(:to => user.email, :subject => "Welcome to Neighbourfood")
  end

  def new_meal_request(order)
    @order = order
    @chef = order.meal.user
    @buyer = order.user
    mail(:to => @chef.email, :subject => "#{@buyer.fname} wants to buy your meal, !")
  end
end
