# Location: spec/dummy_spec.rb

require 'helper'

describe 'A useless blog', :type => :feature do

  it "should at least work" do
    puts page.driver.browser.capabilities.inspect
    visit 'https://alphahydrae.com'
    page.should have_content('Alpha Hydrae')
  end
end
