class RestaurantController < ApplicationController
  def new

  end
  def show
      @restauraunt = Restaurant.find(params[:id])
      debugger
  end
end
