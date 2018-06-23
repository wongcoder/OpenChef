require 'test_helper'

class EatQueueControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get eat_queue_new_url
    assert_response :success
  end

end
