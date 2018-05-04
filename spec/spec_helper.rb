require "bundler/setup"
require "colorme_public_api"
require 'pry'
require 'dotenv/load'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.order = 'random'
end

def test_access_token
  ENV.fetch('ACCESS_TOKEN', 'a'*5)
end

def build_config(args={})
  config = ColormePublicApi::Configuration.new

  # No default value
  config.access_token = args[:access_token] || test_access_token
end