class PagesController < ApplicationController

def home
  if params[:search].present?
    @meals = Meal.near(params[:search], params[:distance], :order => :distance)
  else
    @meals = Meal.all
  end

end

end
