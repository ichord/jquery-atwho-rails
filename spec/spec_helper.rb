# Set up generator tests
require 'rails'
require 'rails/all'
require 'rails/generators'

class TestApp < Rails::Application
  config.root = File.dirname(__FILE__)
end
Rails.application = TestApp

module Rails
  def self.root
    @root ||= File.expand_path("../../tmp/", __FILE__)
  end
end
Rails.application.config.root = Rails.root
# Call configure to load the settings from
# Rails.application.config.generators to Rails::Generators
#Rails::Generators.configure!

#Rails.application.config.assets.enabled = true
require "generator_spec"
require 'generators/atwho/install_generator'
