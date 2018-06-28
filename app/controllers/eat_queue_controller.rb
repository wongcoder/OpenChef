class EatQueueController < ApplicationController
  # Check if user signed in. This will submit a post request.
  def new
    if user_signed_in?
      session_to_user
      check_queue
    else
      render 'new_user_session'
    end
  end

  def create
    if @EatQueue.save
      # handle save, we can call function to render?
    else
      # might cause infinite loop for queue, could create temporary webpage
      render 'new'
    end
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
