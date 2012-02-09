# Set up RSpec
%q{
require 'webmock/rspec'

RSpec.configure do |config|
  config.include WebMock::API
end
}
# Set up generator tests
require 'rails/all'
require 'rails/generators'

class TestApp < Rails::Application
  config.root = File.dirname(__FILE__)
end

require 'generators/jquery-atwho/install_generator'
require 'generator_spec/test_case'
