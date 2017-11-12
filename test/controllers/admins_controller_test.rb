require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # Admin redirection test

  test "should get redirect if not logged in" do
    get admin_root_path
    assert_response :redirect
    assert_redirected_to admin_user_session_path
  end

end
