require "test_helper"

class UserLoginTest < ActionDispatch::IntegrationTest
  test "login and browse site" do
    # login via https
    https!
    get "/login"
    assert_response :success

    post "/login", params: { username: users(:one).user_name, password: users(:one).password }
    follow_redirect!
    assert_equal '/contacts', path
    assert_equal 'Login successful', flash[:notice]

    https!(false)
    get "/contacts/"
    assert_response :success
    assert_select 'h1', 'Contacts'
  end
end