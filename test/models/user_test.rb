require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without username" do
    user = User.new
    user.user_name = ""
    assert_not user.save, "saved without a username"
  end

  test "should not save user without email" do
    user = User.new
    user.email = ""
    assert_not user.save, "saved without an email"
  end

  test "should not save user without a first name" do
    user = User.new
    user.first_name = ""
    assert_not user.save, "saved without a first name"
  end

  test "should not save user without a last name" do
    user = User.new
    user.last_name = ""
    assert_not user.save, "saved without a last name"
  end

  test "should not save user without a password digest" do
    user = User.new
    user.password_digest = ""
    assert_not user.save, "saved without a password digest"
  end
end
