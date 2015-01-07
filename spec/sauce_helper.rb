# Use Capybara integration
require "sauce"
require "sauce/capybara"
require "capybara/rails"
require "capybara/rspec"

Capybara.default_driver = :sauce

# Set up configuration
Sauce.config do |c|
  c[:browsers] = [
    ["Windows 8", "Internet Explorer", "10"],
    ["Windows 7", "Firefox", "20"],
    ["OS X 10.8", "Safari", "6"],
    ["Linux", "Chrome", nil]
  ]
end
