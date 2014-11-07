
require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox # or :ie or :chrome;
browser.navigate.to "http://www.realestate.com.au"
browser.find_element(:link_text, "Rent ").click
browser.find_element(:link_text, "Invest ").click
browser.find_element(:link_text, "Sold ").click