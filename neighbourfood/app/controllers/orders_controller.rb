class OrdersController < ApplicationController
  before_filter :check_if_logged_in

  def new
    @meal = Meal.find(params[:id])
    @order = Order.new
  end

  def create
    @meal = Meal.find(params[:id])
    @order = Order.new params[:order]
    @order.user = @auth
    @auth.orders << @order
    @meal.orders << @order
    redirect_to root_path
  end

  def index
    @orders = @auth.orders
  end

  private

  def check_if_logged_in
    redirect_to root_path unless @auth.present?
  end

end
