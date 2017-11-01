require 'test_helper'

class CarControllerTest < ActionDispatch::IntegrationTest
  test "should get accelerate" do
    get car_accelerate_url
    assert_response :success
  end

end
