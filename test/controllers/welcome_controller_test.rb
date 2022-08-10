require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_select "h1", "Hello and Welcome!"
    assert_response :success
  end

end
