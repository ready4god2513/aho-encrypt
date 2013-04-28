require 'test_helper'

class PasswordControllerTest < ActionController::TestCase
  test "should get encrypt" do
    get :encrypt
    assert_response :success
  end

end
