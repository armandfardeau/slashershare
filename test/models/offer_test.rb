require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  test 'is not valid without a title' do
    s = Offer.create(
        title: nil,
        description: 'A short description'
    )
    assert s.errors[:title].any?
    refute s.valid?
  end

  test 'is not valid without a description' do
    s = Offer.create(title: 'My test submission', description: nil)
    assert s.errors[:description].any?
    refute s.valid?
  end

  test 'is valid with required attributes' do
    s = users(:one).offers.create(
        title: 'My test submission',
        description: 'a test submission')
    assert s.valid?
  end

  test 'is valid with alternative required attributes' do
    s = Offer.create(
        title: 'My test submission',
        description: 'a test submission',
        user: users(:one))
    assert s.valid?
  end

  test 'is not valid without a user' do
    s = Offer.create(
        title: 'My test submission',
        description: 'a test submission')
    refute s.valid?
  end

  test 'is associated with a user' do
    assert_equal users(:one), offers(:one).user
  end


  test 'is taggable' do
    offers(:one).tag_list = 'blog', 'ruby'
    offers(:one).save
    assert_equal 2, offers(:one).tags.size
    assert_equal ['blog', 'ruby'], offers(:one).tag_list
  end

  test 'find tagged with' do
    offers(:one).tag_list = 'blog', 'ruby'
    offers(:one).save
    assert_equal [offers(:one)], Offer.tagged_with('blog')
  end
end
