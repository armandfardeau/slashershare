require 'test_helper'

class OffersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    logged_in
    get offers_path
    assert_response :success
  end

  test "should get show" do
    get offer_path(offers(:one))
    assert_response :success
  end

  test "should get new" do
    logged_in
    get new_offer_path
    assert_response :success
  end

  test "should get edit" do
    logged_in
    get edit_offer_path(offers(:two))
    assert_response :success
  end


  # Devise redirection test

  test "should not get edit if not logged in" do
    get edit_offer_path(offers(:two))
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should not get redirect if not logged in" do
    get offers_path
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

end
