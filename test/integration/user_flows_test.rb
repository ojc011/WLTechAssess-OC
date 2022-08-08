require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_name = contacts(:one)
    @salutation = contacts(:two)
  end

  test 'contacts index' do
    get contact_path(@contacts)

    assert page.has_content?(@one.first_name)
    assert page.has_content?(@two.salutation)

    assert_response :success
  end
end