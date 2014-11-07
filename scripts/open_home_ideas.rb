require 'rspec'
require 'watir'

browser = Watir::Browser.new

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
  config.after(:suite) { browser.close unless browser.nil? }
end

describe "a simple demonstration of watir and RSpec" do
  before(:each) do
    @browser.goto("http://www.realestate.com.au/home-ideas")
  end

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