require "helper"

describe "Wikipedia's Ramen Page", :type=>:feature, :sauce => false do
  it "Should mention the inventor of instant Ramen" do
    #visit "http://en.wikipedia.org/"
    #fill_in 'search', :with => "Ramen"
    #$click_button "searchButton"
    page.should have_content "Momofukudus Ando"
  end

  after(:each) do |example|
    puts "you ran some test"
    cap = page.driver.browser.capabilities
    
    example.metadata[:full_description] += " [%s/%s/%s]" % [cap[:browser_name], cap[:version], cap[:platform]]
   # puts example.metadata.methods
    puts "You ran this test on %s browser %s version and %s OS" % [cap[:browser_name], cap[:version], cap[:platform]]
  end
end

