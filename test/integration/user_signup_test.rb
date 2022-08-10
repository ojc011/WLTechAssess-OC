require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
    test "signup and browse site" do
    # login via https
    https!
    get "/signup"
    assert_response :success

    post "/signup", params: { firstname: users(:one).first_name, lastname: users(:one).last_name, username: users(:one).user_name, email: users(:one).email, password: users(:one).password }
    click_on "Create Account"
    follow_redirect!
    assert_equal '/contacts', path
    assert_equal 'Signup successful', flash[:notice]

    https!(false)
    get "/contacts/"
    assert_response :success
    assert_select 'h1', 'Contacts'
  end
end