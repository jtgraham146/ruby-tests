require 'rubygems'  
require "selenium/client"  
require 'rspec'  
require 'testingbot'  
require 'testingbot/tunnel'  
  
TestingBot::config do |config|  
  config[:desired_capabilities] = [{ :browserName => "firefox", :version => 9, :platform => "WINDOWS" }, { :browserName => "firefox", :version => 11, :platform => "WINDOWS" }]  
end  
  
describe "Find Apartments", :type => :selenium, :multibrowser => true do  
    it "can find the right title" do      
      page.navigate.to "http://www.realestate.com.au/buy/property-unit+apartment-between-0-500000-in-richmond%2c+vic+3121%3b/list-1?includeSurrounding=false"  
      page.title.should contain("Find Apartments")     
    end  
end 