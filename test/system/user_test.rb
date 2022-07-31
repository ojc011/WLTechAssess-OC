require "application_system_test_case"

class UserTest < ApplicationSystemTestCase
  setup do
    @login = users(:one)
  end

  test "visiting the login screen" do
    visit '/login'
    assert_selector "h1", text: "Login"
  end

  test "visiting the signup screen" do
    visit '/signup'
    assert_selector "h1", text: "Signup"
  end

  test "creating an account" do
    visit '/signup'
    click_on "Create Account"

    assert_text "Signup successful"
    click_on "Logout"
  end

  test "Logging in" do
    visit '/login'
    click_on "Log in"

    assert_text "Login successful"
    click_on "Logout"
  end

  test "destroying a Phone number" do
    visit phone_numbers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone number was successfully destroyed"
  end
end
