require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get list" do
    get list_path
    assert_response :success
  end

  # Devise redirection test

  test "should get sign in" do
    get new_user_session_path
    assert_response :success
    end

  test "should get sign up" do
    get new_user_registration_path
    assert_response :success
  end
  
end
