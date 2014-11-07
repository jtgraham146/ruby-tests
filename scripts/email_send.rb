#email_send.rb
require 'rspec'
require 'watir'


browser = Watir::Browser.new

RSpec.configure do |config|
  config.before(:each) { @browser = browser }
 #config.after(:suite) { browser.close unless browser.nil? }
end

describe "Open the Send Grid Web API page" do
  #before(:each) do
    @browser.goto("https://sendgrid.com/docs/API_Reference/Web_API/mail.html")
end
browser = Watir::Browser.start "https://sendgrid.com/docs/API_Reference/Web_API/mail.html"
browser.checkbox(:id, "includeSurrounding").clear
browser.checkbox(:value,"unit apartment").set
browser.select_list(:name, "maxPrice").select "$500,000"
browser.text_field(:id, "where").set("richmond, vic 3121;")
browser.button(:value, "Submit Search").click
browser.checkbox(:id, "ddCb_propertyType_2").set
browser.button(:value,"search").click
