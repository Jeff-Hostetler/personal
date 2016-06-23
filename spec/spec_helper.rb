# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require 'capybara/rspec'
require 'capybara'

require_relative '../config/environment'
Hanami::Application.preload!

Dir[__dir__ + '/support/**/*.rb'].each { |f| require f }

RSpec.configure do |config|
  config.include RSpec::FeatureExampleGroup

  config.include Capybara::DSL,           feature: true
  config.include Capybara::RSpecMatchers, feature: true

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
