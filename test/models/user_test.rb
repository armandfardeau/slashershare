require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'has a offer association' do
    assert_equal 1, users(:one).offers.size
    assert users(:one).offers.includes offers(:one)
  end

  test 'is not valid without an email' do
    u = User.create(
        username: 'userTest',
        email: nil,
        password: 'password'
    )
    assert u.errors[:email].any?
    refute u.valid?
  end

  test 'is not valid without a password' do
    u = User.create(
        email: 'userOne@email.com',
        password: nil
    )
    assert u.errors[:password].any?
    refute u.valid?
  end

  test 'is valid with required attributes' do
    u = User.create(
        email: 'userOne@email.com',
        password: 'password'
    )
    assert u.valid?
  end

  test 'is valid with full attributes' do
    u = User.create(
        email: 'userOne@email.com',
        password: 'password',
        age: '22',
        enterprise: true,
        address: 'NY',
        phone: '0612686811',
        avatar: sample_file
    )
    assert u.valid?
  end

  test 'is valid with an enterprise' do
    u = User.create(
        email: 'userOne@email.com',
        password: 'password',
        enterprise: true
    )
    assert u.valid?
  end

  test 'enterprise should be true if new record with true' do
    u = User.create(
        email: 'userOne@email.com',
        password: 'password',
        enterprise: true
    )
    assert u.valid?
    assert_equal u.enterprise, true
  end

  test 'enterprise should be false if new record' do
    u = User.create(
        email: 'userOne@email.com',
        password: 'password'
    )
    assert u.valid?
    assert_equal u.enterprise, false
  end

  test 'enterprise should be true if not new record' do
    u = User.create(
        email: 'userOne@email.com',
        password: 'password'
    )
    u.enterprise = true
    u.save
    assert u.valid?
    assert_equal u.enterprise, true
  end

  test 'is valid with a username' do
    u = User.create(
        username: 'userTest',
        email: 'userOne@email.com',
        password: 'password'
    )
    assert u.valid?
  end

  test 'should have unique email' do
    User.create(
        username: 'userTest',
        email: 'userOne@email.com',
        password: 'password'
    )

    u = User.create(
        username: 'userTest',
        email: 'userOne@email.com',
        password: 'password'
    )
    assert u.errors[:email].any?
    refute u.valid?
  end

  test 'is not valid with incorrect attachment' do
    u = User.create(
        email: 'userOne@email.com',
        password: 'password',
        avatar: sample_file('sample-file.pdf')
    )
    assert u.errors[:avatar].any?
    refute u.valid?
  end
end
