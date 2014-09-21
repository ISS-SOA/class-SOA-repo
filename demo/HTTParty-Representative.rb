# Code courtesy of: http://www.railstips.org/blog/archives/2008/07/29/it-s-an-httparty-and-everyone-is-invited/

require 'httparty'

class Representative
  include HTTParty
  format :xml
  
  def self.find_by_zip(zip)
    get('http://whoismyrepresentative.com/getall_mems.php', :query => {:zip => zip})
  end
end

## Usage examples:
reps = Representative.find_by_zip(53706)
reps['result']['rep'].count
reps['result']['rep'].map {|rep| rep['name']}
