require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get accounts" do
    get static_pages_accounts_url
    assert_response :success
  end

  test "should get restaurants" do
    get static_pages_restaurants_url
    assert_response :success
  end

  test "should get eat" do
    get static_pages_eat_url
    assert_response :success
  end

end
