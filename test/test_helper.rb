ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

begin
  Apartment::Tenant.drop('whatevs')
rescue StandardError
  nil
end
Apartment::Tenant.create('whatevs')
Apartment::Tenant.switch!('whatevs')

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
