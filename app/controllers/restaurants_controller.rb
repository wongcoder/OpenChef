class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:id])
  end
  def show
    @restauraunt = Restaurant.find(params[:id])
    debugger
  end
end
