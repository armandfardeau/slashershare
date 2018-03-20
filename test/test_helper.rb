require 'coveralls'
Coveralls.wear!('rails')
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  # Add more helper methods to be used by all tests here...
  def logged_in(user = users(:one))
    sign_in user, scope: :user
  end

  def sample_file(filename = 'sample-file.png')
    File.new(Rails.root.join('test', 'fixtures', 'files', filename))
  end
end
