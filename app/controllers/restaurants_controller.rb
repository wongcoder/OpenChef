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
    end

  end
end
