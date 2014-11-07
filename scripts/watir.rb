require 'rubygems'
require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new
browser.goto 'http://bit.ly/watir-example'

browser.text_field(:name => 'entry.0.single').set 'Watir'
browser.text_field(:name => 'entry.1.single').set "I come here from Australia. \n The weather is great here.
browser.radio(:value => 'Watir').set
browser.radio(:value => 'Watir').clear
browser.checkbox(:value => 'Ruby').set
browser.checkbox(:value => 'Python').set
browser.checkbox(:value => 'Python').clear
browser.button(:name => 'logon').click
browser.select_list(:name => 'entry.6.single').clear
puts browser.select_list(:name => 'entry.6.single').options
browser.select_list(:name => 'entry.6.single').select 'Chrome'
browser.button(:name => 'submit').click
puts browser.text.include? 'Your response has been recorded.'
puts browser.title == 'Thanks!'
