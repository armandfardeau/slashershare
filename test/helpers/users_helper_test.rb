require 'test_helper'

class UsersHelperTest < ActiveSupport::TestCase
  include UsersHelper

  test 'should return enterprise' do
    u = user_profile_type(users(:one))
    assert_equal 'enterprise', u
  end

  test 'should return slasher' do
    u = user_profile_type(users(:two))
    assert_equal 'slasher', u
  end
end
