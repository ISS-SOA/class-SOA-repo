# See how to use Nokogiri::XML at:
#  http://nokogiri.rubyforge.org/nokogiri/Nokogiri/XML/Builder.html
require 'nokogiri'
# See how to use Jbuilder at:
#  https://github.com/rails/jbuilder
require 'jbuilder'

class Widget
  attr_accessor :id, :name
  attr_reader :dimensions

  def set_dimensions(w, l, h)
    @dimensions[:width] = w
    @dimensions[:length] = l
    @dimensions[:height] = h
    @dimensions         # return dimensions
  end

  def to_xml
    # 1. Builder uses method_missing to create XML tags
    #    given method calls (e.g., id_, name_, etc)
    #    see: http://ruby-doc.org/core-2.0.0/Object.html#method-i-send
    # 2. Underscores (_) tell Builder to distinguish
    #    our method names from default method names
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.root {
        xml.products {
          xml.widget {
            xml.id_ @id
            xml.name_ @name
            xml.class_ self.class.to_s
            ## create dimensions by sending hash keys as method names, hash values as parameters
            # xml.dimensions do
            #   @dimensions.each { |d, val| xml.send(d.to_s, val) }
            # end
            
            # alternative: create a dimension tag with key/values as attributes
            xml.dimensions @dimensions
            # => <dimensions width="0" length="0" height="0"/>            
          }
        }
      }
    end
    builder.to_xml
  end

  def to_json
    Jbuilder.encode do |json|
      json.root {
        json.products {
          json.widget {
            json.id @id
            json.name @name
            json.class self.class.to_s
            json.dimensions @dimensions
          }
        }
      }
    end
  end

  def initialize(id, name)
    @id = id
    @name = name
    @dimensions = {:width => 0, :length => 0, :height => 0}
  end
end

# Example:
w = Widget.new(5, "WeeJet")
# => #<Widget:0x007fe27306dc38 @id=5, @name="WeeJet", @dimensions={:width=>0, :length=>0, :height=>0}>
w.set_dimensions(13,4,9)
# => {:width=>13, :length=>4, :height=>9}

puts w.to_xml
puts w.to_json

# pretty print of json
require 'json'
puts JSON.pretty_generate JSON.parse(w.to_json)
