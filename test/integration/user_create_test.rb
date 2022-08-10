require "test_helper"

class UserCreateTest < ActionDispatch::IntegrationTest
    test "can create a contact" do
        get "/contacts/new"
        assert_response :success

        post "/contacts",
            params: { article: { first_name: "name", middle_name: "mname", last_name: "lname", ssn: "000000000", dob: "01/01/2000", comment: "comment" } }
            click_on "Create Contact"
        assert_response :redirect
        follow_redirect!
        assert_response :success
        assert_select "a", "All Contacts"
    end

    test "can edit a contact" do
        get "/contacts/1"
        assert_response :success

        post "/contacts/1",
            click_on "Edit Contact"
            params: { article: { first_name: "name" } }
            click_on "Update Contact"
        assert_response :redirect
        follow_redirect!
        assert_response :success
        assert_select "a", "All Contacts"
    end

    test "can create new address"
        get "/contacts/1"
        assert_response :success

        post "/contacts/1"
            click_on "New Address"
            params: { article: { street: "123street", town: "town", zip: "00000", state: "XX", country: "US" }}
            click_on "Create Address"
        assert_response :redirect
        follow_redirect!
        assert_response :success
        assert_select "a", "All Contacts"
    end

    test "can create new phone number"
        get "/contacts/1"
        assert_response :success

        post "/contacts/1"
            click_on "New Phone Number"
            params: { article: { number: "0000000000", comment: "text" }}
            click_on "Create Phone Number"
        assert_response :redirect
        follow_redirect!
        assert_response :success
        assert_select "a", "All Contacts"
    end

    test "can create new email"
        get "/contacts/1"
        assert_response :success

        post "/contacts/1"
            click_on "New Email"
            params: { article: { email_address: "a@a.com", comment: "comment" }}
            click_on "Create Email"
        assert_response :redirect
        follow_redirect!
        assert_response :success
        assert_select "a", "All Contacts"
    end