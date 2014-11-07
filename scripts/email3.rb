#email3.rb
#Send and email using the Web API on Sendgrid.
require 'watir'
require 'rspec'

describe " Opening the Web API to send an email" do
browser = Watir::Browser.start "https://sendgrid.com/docs/API_Reference/Web_API/mail.html"
browser.wait_until {browser.button(:id, "settings-mail").exists? }
browser.button(:id, "settings-mail").click
end
it " Enter User information into the Settings window" do
 enter_text("username", "jgraham146")
 enter_text("password", "Test12345")
 click_button("Save")
@browser.text_field(:id, "username").set("jgraham146")
@browser.text_field(:id, "password").set("Test1234")
end
it "should contain the correct user name and password" do

 @browser.text.include? 'jgraham146'
puts browser.text_field(:id, "username").exist?
end
browser.button(:value, "Save").click
browser.button(:value, "Try It").click




browser.text_field(:name, "to").set("jgraham146@gmail.com")
browser.text_field(:name, "toname").set("Jonathan Graham")
browser.text.include? 'Jonathan Graham'
puts browser.text_field(:name, "toname").text
browser.text_field(:name, "subject").set("Test Email")
browser.text_field(:name, "text").set("This is a Test email using Watir and the Sendgrid Web API.  I made this with Ruby bitches,  3 days 17 hours until vegas!!")
browser.text_field(:name, "from").set("jgraham146@gmail.com")
browser.button(:value, "Make Request").click
browser.text.include? '201 - OK'
browser.text.include? 'movies'
puts 

browser.close 
