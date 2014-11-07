require "rubygems"
require "rspec"
require "watir-webdriver"
 
describe "realestate.com.au" do
  let(:browser) { @browser ||= Watir::Browser.new :firefox }
  before { browser.goto "http://www.realestate.com.au/buy/property-unit+apartment-between-0-500000-in-richmond%2c+vic+3121%3b/list-1?includeSurrounding=false" }
  after { browser.close }
 
  it "should Showing 1 - 20 of 68 Total Results" do
    browser.div.id(:name => "resultsInfo").set "Showing 1 - 20 of 68 Total Results;"
    #browser.button.click
    #browser.div(:id => "resultStats").wait_until_present
    #browser.title.should == "watir - Google Search"
	
   if browser.text.include? "Showing 1 - 20 of 68 Total Results"
	Yeah_search_worked
	else 
	 Search_not_working
	
  end
end