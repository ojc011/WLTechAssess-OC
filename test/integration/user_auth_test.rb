require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
    setup do
        @contact = contacts(:one)
  test "user login" do
    get root_path
    click_on "Login"
    assert_equal 200, status

    rendered.should have_selector("input", :type => "text",
                                     :name => "params[:name]",
                                     :value => @one.user_name)
    
    rendered.should have_selector("input", :type => "text",
                                     :name => "[:password]]",
                                     :value => @one.password)                                 
    
   click_on "Log In"
   assert_redirected_to contacts_index_path
  end

  test "user logout" do
    get contacts_index_path

    click_on "Logout"
    click_on "OK"
    
    assert_redirected_to root_path
  end