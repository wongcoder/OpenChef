module EatQueueHelper
  # Receive user data
  def session_to_user
    @user = User.find(session["warden.user.user.key"][0][0])
    return @user
  end

  def check_queue?
    if EatQueue.count() != 0 # A match has been found, add them in
      @matchedUser = EatQueue.first().userid
      MatchLog.new(owner: @matchedUser, matchedwith: @user.id)
      MatchLog.new(owner: @user.id, matchedwith: @matchedUser)
      # Create a log, to see if user has had a queue.
      # Send notification later
      queue_update
      EatQueue.destroy_all
    else
      EatQueue.new(userid: @user.id)
    return
  end

  def queue_update
    render 'new' # Implement a function that will check if MatchLog has this user in it.
  end

end
