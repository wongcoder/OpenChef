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

  # Submit GET request
  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to @restaurant
    else
      puts "Something went wrong."
      render 'new' # Render the new page on routes
    end

  end

  private
  # TO BE FINISHED 
  def restaurant_param_check
    params.require(:restaurant).permit(:name, :location, :contactPhone) # Add an implementation to fetch a Yelp image from their API
  end

end
