#email2.rb
#Send and email using the Web API on Sendgrid.
require 'watir'


browser = Watir::Browser.start "https://sendgrid.com/docs/API_Reference/Web_API/mail.html"
browser.wait_until {browser.button(:id, "settings-mail").exists? }
browser.button(:id, "settings-mail").click
browser.text_field(:id, "username").set("jgraham146")
browser.text_field(:id, "password").set("Test1234")
browser.text.include? 'jgraham146'
puts browser.text_field(:id, "username").exist?
browser.button(:value, "Save").click
browser.button(:value, "Try It").click




browser.text_field(:name, "to").set("jgraham146@gmail.com")
browser.text_field(:name, "toname").set("Jonathan Graham")
browser.text.include? 'Jonathan Graham'
puts browser.text_field(:name, "toname").text
browser.text_field(:name, "subject").set("Test Email")
browser.text_field(:name, "text").set("This is a Test email using Watir and the Sendgrid Web API.")
browser.text_field(:name, "from").set("jgraham146@gmail.com")
browser.button(:value, "Make Request").click
browser.text.include? '200 - OK' 
browser.text.include? 'success'


browser.close 

