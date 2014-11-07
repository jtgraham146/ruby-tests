#check.rb
require 'watir'

#search for specifc criteria
browser = Watir::Browser.start "http://www.realestate.com.au/buy"
browser.checkbox(:id, "includeSurrounding").clear
browser.checkbox(:value,"unit apartment").set
browser.select_list(:name, "maxPrice").select "$500,000"
browser.text_field(:id, "where").set("richmond, vic 3121;")
browser.button(:value, "Submit Search").click
browser.checkbox(:id, "ddCb_propertyType_2").set
browser.button(:value,"search").click
puts browser.div(:id, 'resultsInfo').text

browser.close 