class PagesController < ApplicationController

def home
  if params[:search].present?
    @meals = Meal.near(params[:search], params[:distance], :order => :distance)
    if @meals.count == 0
      @meal_message = true
      @meals = Meal.all
    end
  else
    @meals = Meal.all
    @meal_message = false
  end
end

end
