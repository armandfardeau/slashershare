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
        address: 'NY',
        phone: '0612686811'
    )
    assert u.valid?
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

    c = User.create(
        username: 'userTest',
        email: 'userOne@email.com',
        password: 'password'
    )
    assert c.errors[:email].any?
    refute c.valid?
  end
end
