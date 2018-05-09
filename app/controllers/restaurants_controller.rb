  class RestaurantsController < ApplicationController
  def index
    # This is the important part
  end
  def show
    @restauraunt = Restaurant.find(params[:id])
    debugger
  end

  def new
    @restaurant = Restaurant.new() #.new does the same
  end
end
