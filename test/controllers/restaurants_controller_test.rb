require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get review" do
    get restaurants_review_url
    assert_response :success
  end

end
