  class RestaurantsController < ApplicationController
  def index
    # This is the important part
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new #.new does the same
  end

  def create
    @restaurant = Restaurant.new(params[:user])
    if @restaurant.save
      redirect_to @restaurant
    else
      puts "Something went wrong."
      render 'new' # Render the new page on routes
    end

  end
end
