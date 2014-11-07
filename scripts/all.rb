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
      @browser.text.should_not include('Movies')
    end
  end
end

# open the Rent page for www.realestate.com.au

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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
  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Real Estate" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Real Estate')
    end
# Validate the page does not contain the following text
    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Invest" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Invest')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Auction" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Auction')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Share" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Share')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include New Apartments" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('New Apartments')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Retirement" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Retirement')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Real Estate Agents" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Real Estate Agents')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Home Ideas" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Home Ideas')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end


RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

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

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Real Estate News" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Real Estate News')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end


RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

describe "Test to open the www.realestate.com.au page" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/for-sale")
  end
# Validate the URL is valid
  describe "that we have hit a valid URL" do
    it "should not return an invalid error message" do
      @browser.text.should_not include('The requested URL could not be retrieved')
    end
  end

  describe "the contents of the realestate page" do # the describe() is an example group
    it "should include Commercial Real Estate" do # the it() represents the detail that will be expressed in the code within the block
      @browser.text.should include('Commercial Real Estate')
    end

    it "should not include Movies" do
      @browser.text.should_not include('Movies')
    end
  end
end