module EatQueueHelper
  # Receive user data
  def session_to_user
    @user = User.find(session["warden.user.user.key"][0][0])
    queue_user(@user)
    return @user
  end

  def check_queue?
    if queue.count()
    return 
  end
end
