require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get failure" do
    get :failure
    assert_response :success
  end

end
