# Location: spec/helper.rb

require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

# Use Capybara integration
require "sauce"
require "sauce/capybara"
require "capybara/rspec"
require "capybara"
require "rspec"

Capybara.default_driver = :sauce

# Set up configuration
Sauce.config do |c|
  c[:browsers] = [
    ["Linux", "Chrome", nil]
  ]
end

puts "running the helper file now"


# filename: failure_catcher.rb

require 'rspec/core/formatters/base_formatter'

class FailureCatcher < RSpec::Core::Formatters::BaseFormatter

end
