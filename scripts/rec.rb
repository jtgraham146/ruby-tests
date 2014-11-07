require 'watir'

browser = Watir::Browser.start  "http://www.realestate.com.au/"


browser.link(:text, "Rent 
").click
browser.link(:text, "Invest 
").click
browser.link(:text, "Sold
").click
browser.link(:text, "Retire
").click
browser.link(:text, "Find agents
").click
end