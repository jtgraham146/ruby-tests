require 'watir'

#require 'rspec'

browser = Watir::Browser.start "https://sendgrid.com/docs/API_Reference/Web_API/mail.html"

browser.wait_until {browser.button(:id, "settings-mail").exists? }
browser.button(:value, "Try It").click

browser.text_field(:name, "to").set("jgraham146@gmail.com")
browser.text_field(:name, "toname").set("Jonathan Graham")
browser.text.include? 'Jonathan Graham'
puts browser.text_field(:name, "toname").text
browser.text_field(:name, "subject").set("Test Email")
browser.text_field(:name, "text").set("This is a Test email using Watir and the Sendgrid Web API.  I made this with Ruby bitches,  3 days 17 hours until vegas!!")
browser.text_field(:name, "from").set("jgraham146@gmail.com")
browser.button(:value, "Make Request").click


puts browser.table(:span, 'hljs-attribute').text


browser.close 