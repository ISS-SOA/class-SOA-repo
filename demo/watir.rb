require 'watir-webdriver'

browser = Watir::Browser.new
browser.goto 'bit.ly/watir-webdriver-demo'
browser.text_field(:id => 'entry_0').set 'your name'
browser.select_list(:id => 'entry_1').select 'Ruby'
selected = browser.select_list(:id => 'entry_1').selected? 'Ruby'
puts "TEST: correct language selected" if selected
browser.button(:name => 'submit').click
thanks = browser.text.include? 'Thank you'
puts "TEST: user thanked!" if thanks

browser.close
