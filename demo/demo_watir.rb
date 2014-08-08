require 'watir-webdriver'
b = Watir::Browser.new
b.goto 'bit.ly/watir-webdriver-demo'
b.text_field(:id => 'entry_0').set 'your name'
b.select_list(:id => 'entry_1').select 'Ruby'
selected = b.select_list(:id => 'entry_1').selected? 'Ruby'
puts "TEST: correct language selected" if selected
b.button(:name => 'submit').click
thanks = b.text.include? 'Thank you'
puts "TEST: user thanked!" if thanks

