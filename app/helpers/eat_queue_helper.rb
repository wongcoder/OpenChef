module EatQueueHelper
  # Receive user data
  def session_to_user
    @user = User.find(session["warden.user.user.key"][0][0])
    return @user
  end

  def check_queue?
    if EatQueue.count() != 0 # A match has been found
      @matchedUser = EatQueue.first().username
      MatchLog.new(owner: @matchedUser, matchedwith: @user)
      MatchLog.new(owner: @user, matchedwith: @matchedUser)
      queue_update
      EatQueue.destroy_all
    else
      
    return
  end

  def queue_update
    render 'new' # Implement a function that will check if MatchLog has this user in it.

  end

end
