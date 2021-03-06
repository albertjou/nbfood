class MealsController < ApplicationController
  before_filter :check_if_logged_in, :except => [:show]

  def index
    @meals = Meal.where(:user_id => @auth.id)
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new params[:meal]
    @meal.user = @auth
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  def show
    @meal = Meal.find(params[:id])
    @meals = @meal.nearbys(10)
  end


  def edit
    @meal = Meal.find(params[:id])
    render :new
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.user = @auth
      if @meal.update_attributes(params[:meal])
        redirect_to root_path
      else
        render :new
      end
    end
  end

  def destroy
    meal = Meal.find(params[:id])
    if meal.user_id = @auth.id
      meal.destroy
      redirect_to root_path
    else
      flash[:notice] = "You are not authorised"
      redirect_to root_path
    end
  end

  private

  def check_if_logged_in
    redirect_to new_user_path unless @auth.present?
    flash[:notice] = "Almost there, you just need to sign up now or login if you already have an account" unless @auth.present?
  end

end
