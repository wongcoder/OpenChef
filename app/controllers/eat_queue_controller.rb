class EatQueueController < ApplicationController
  def new
    if user_signed_in?
      session_to_user
    else
      render 'new'
    end

  end

  def create
  end

  # Cancel from queue
  def destroy
  end

  # User has finished dining, review time
  def finished
  end

private
  def found_match
  end

end
