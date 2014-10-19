
# http://www.tutorialspoint.com/ruby/ruby_regular_expressions.htm
# http://ruby-doc.org/core-2.0.0/String.html#method-i-scan
# https://www.bluebox.net/insight/blog-article/using-regular-expressions-in-ruby-part-1-of-3

# Phone numbers possibly entered in a text box of a web form
phone1 = '2004-959-559'
phone2 = 'Use this: +(866)-988-162-185 (my 1st choice number)'
phone3 = "I don't have a number"
phone4 = '0988-162-185 (or also: 0988-263-064)'

phone1 =~ /\d/					# where does pattern match?

if (pos = (phone2 =~ /\d/))
  puts " number at #{pos}"
end

phone3 =~ /\d/					# return NIL if not match
phone3 !~ /\d/					# boolean: no pattern match?

phone1.gsub(/\D/, '')
phone1.gsub!(/\D/, '')			# the ! saves change

phone2.gsub(/\D/, '')			# not quite what we want

# This checks if your matched portion exists
phone2 =~ /[\d\-\(\)\+]{3,}/

# This captures just the matched portion
phone_match = phone2.match(/[\d\-\(\)\+]{3,}/)
phone_match.to_s
phone_match.pre_match
phone_match.post_match

# Using <String>.scan you can capture multiple matches
multi_match = phone4.scan(/[\d\-\(\)\+]{3,}/)
multi_match[0]
multi_match[1]
multi_match[2]

multi_match.each { |num| puts num.gsub(/\D/, '') }
