require 'test_helper'

class ApplicationHelperTest < ActiveSupport::TestCase
  include ApplicationHelper

  test 'should return default image' do
    assert_equal avatar_url(users(:one)), 'default_profil_picture.svg'
  end

  test 'should not return default image if one is specified' do
    u = User.create(
        email: 'test@test.fr',
        password: 'test',
        avatar: sample_file
    )
    assert_not_equal avatar_url(u), 'default_profil_picture.svg'
  end

  test 'should return user avatar' do
    u = User.create(
        email: 'test@test.fr',
        password: 'test',
        avatar: sample_file
    )
    assert_equal avatar_url(u), u.avatar.url(:thumb)
  end

  test 'should return user avatar in thumb size by default' do
    u = User.create(
        email: 'test@test.fr',
        password: 'test',
        avatar: sample_file
    )
    assert_equal avatar_url(u), u.avatar.url(:thumb)
  end

  test 'should not return user avatar in thumb size if another is specified' do
    u = User.create(
        email: 'test@test.fr',
        password: 'test',
        avatar: sample_file
    )
    assert_not_equal avatar_url(u, :original), u.avatar.url(:thumb)
  end

  test 'should return user avatar in original size if specified' do
    u = User.create(
        email: 'test@test.fr',
        password: 'test',
        avatar: sample_file
    )
    assert_equal avatar_url(u, :original), u.avatar.url(:original)
  end

  test 'should return user avatar in medium size if specified' do
    u = User.create(
        email: 'test@test.fr',
        password: 'test',
        avatar: sample_file
    )
    assert_equal avatar_url(u, :medium), u.avatar.url(:medium)
  end
end
