require 'rubygems'
require 'selenium-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.new
caps["browser"] = "IE"

driver = Selenium::WebDriver.Browser.new
driver.navigate.to "http://www.google.com/ncr"
element = driver.find_element(:name, 'q')
element.send_keys "BrowserStack"
element.submit
puts driver.title
driver.quit