
require 'rspec'
require 'watir'

browser = Watir::Browser.new
# open the Buy page for www.realestate.com.au
RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end
# Open the www.realestate.com.au/buy page
describe "Test to open the www.realestate.com.au/buy page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/buy")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include Real Estate" do 
      @browser.text.should include('Real Estate')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Real Estate')
    end
  end
end

# open the Rent page for www.realestate.com.au

describe "Test to open the www.realestate.com.au/rent page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/rent")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include Real Estate" do 
      @browser.text.should include('Real Estate')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end
# open the Invest page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/invest")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include Invest" do
      @browser.text.should include('Invest')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end
# open the Sold page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/sold")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include Auction" do 
      @browser.text.should include('Auction')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end
# open the Share page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/share")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do
    it "should include Share" do 
      @browser.text.should include('Share')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end
# open the New Homes page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/new-apartments")
  end
# Validate the URL is valid 
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include New Apartments" do 
      @browser.text.should include('New Apartments')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end
# open the Retire page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/retire")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do
    it "should include Retirement" do
      @browser.text.should include('Retirement')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end
# open the Find-Agents page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/find-agent")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include Real Estate Agents" do 
      @browser.text.should include('Real Estate Agents')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end
# open the Home Ideas page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/home-ideas")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include Home Ideas" do 
      @browser.text.should include('Home Ideas')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

# open the Blog page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/blog")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end
#Validate the page contains the corect text
  describe "the contents of the realestate page" do 
    it "should include Real Estate News" do 
      @browser.text.should include('Real Estate News')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

# open the Commercial page for www.realestate.com.au
describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/for-sale")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end#Validate the page contains the corect text

  describe "the contents of the realestate page" do 
    it "should include Commercial Real Estate" do 
      @browser.text.should include('Commercial Real Estate')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end