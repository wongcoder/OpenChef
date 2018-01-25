require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    # create_table :restaurants do |t|
    # t.string :name
    # t.string :location
    # t.integer :rating
    # t.string :contactPhone
    # t.string :imageDirectory

  def setup
    @restaurant = Restaurant.create(name: "Shanghai Express", location: "I should probably change this to address.", rating: 5, contactPhone: "602-316-4873", imageDirectory: "images/Shanghai")
  end

  test "if user is valid" do
    assert @restaurant.valid?
  end

  test "name is present" do
    @restaurant.name = ""
    assert_not @restaurant.valid?
  end

end
