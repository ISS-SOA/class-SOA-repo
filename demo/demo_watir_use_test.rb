require 'watir-webdriver'
require 'minitest/autorun'
require 'minitest/rg'

b = Watir::Browser.new

describe 'the page loads' do
  before do
    b.goto 'bit.ly/watir-webdriver-demo'
  end

  after do
    b.close
  end

  it 'has the correct fields' do
    tex = b.text_field(id: 'entry_0')
    tex.text.must_equal ''
    sel = b.select_list(id: 'entry_1')
    sel.length.must_equal 5
  end

  it 'has working HTML elements' do
    b.text_field(id: 'entry_0').set 'Your Name'
    b.text_field(id: 'entry_0').value.must_equal 'Your Name'
    b.select_list(id: 'entry_1').select 'Ruby'
    b.select_list(id: 'entry_1').value.must_equal 'Ruby'
  end
end

describe 'submission works' do
  before do
    b.goto 'bit.ly/watir-webdriver-demo'
  end

  it 'says thank you' do
    b.goto 'bit.ly/watir-webdriver-demo'
    b.text_field(id: 'entry_0').set 'Your Name'
    b.select_list(id: 'entry_1').select 'Ruby'
    b.button(name: 'submit').click
    b.text.must_include 'Thank you'
  end
end
