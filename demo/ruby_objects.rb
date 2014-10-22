# Good documentation and examples: http://ruby-doc.org/core-2.1.1/

# Contents:
# - EVERYTHING IS AN OBJECT
# - OBJECT COMPARISON
# - STRINGS
# - ARRAYS
# - HASH
# - HASH AND ARRAY CONVERSION


# EVERYTHING IS AN OBJECT
# -----------------------
# Basic objects
        "asdf"						# Strings
        4						# Numbers
        :taiwan						# Symbols
        []						# array or collection
        {}						# hash or dictionary: key and value

# Objects have methods (behaviors)
"hello"						        # => "hello"
"hello".upcase						# => "HELLO"
"hello".reverse						# => "olleh"

# some methods can take a block of code as input
5.times {print "hello;"}			# hello;hello;hello;hello;hello;=> 5

# Operators are methods too
"hello;"*5						# => "hello;hello;hello;hello;hello;"
"hello;".* 5						# => "hello;hello;hello;hello;hello;"
5 + 13							# => 18
5.+ 13							# => 18


# OBJECT COMPARISON
# -----------------
"abc" == "ABC"						# => false
"abc" == "ABC".downcase                                 # => true
"abc" > "ABC"						# => true

# STRINGS
# -------
"my name is soumya".upcase			# => "MY NAME IS SOUMYA"
"MY NAME IS SOUMYA".downcase		        # => "my name is soumya"

myname = "Soumya Ray"				  # => "Soumya Ray"

puts "hello #{myname}"				  # hello Soumya Ray
puts 'hello #{myname}'				  # hello #{myname}

myname.length		                          # => 10

# Break a string into an array of substrings or characters
myname.split					        	# => ["Soumya", "Ray"]
myname.chars						        # => ["S", "o", "u", "m", "y", "a", " ", "R", "a", "y"]
myname[0]							# => "S"
myname[3]							# => "m"


# ARRAYS
# ------
# creating arrays
myname = "Soumya Ray"				     # => "Soumya Ray"
arr =  %W(hello #{myname})                           # => ["hello", "Soumya Ray"]
arr =  %w(hello myname)				     # => ["hello", "myname"]
nums = [2, 3, 1, 4, 6, 9]
mixed = [13, "Hello", :happy, 3.194]
nested = [4, 3, ["Hello", :world], 2]

nums.length							  # => 6
nums.delete_at(3)					          # => [2, 3, 1, 6, 9]
nums.delete(9)						          # => [2, 3, 1, 6]
nums								  # => [2, 3, 1, 6]

# .sort() --- see variants at: http://ruby-doc.org/core-2.1.1/Array.html#method-i-sort
nums.sort()							  # => [1, 2, 3, 6]

# Array.select return a reduced array based on a condition
nums.select { |a| a > 2 }			                  # => [3, 6]

# Array.map transforms every element of an array and produces a new array of same size
nums.map { |a| a > 2 }				                  # => [false, true, false, true]
nums.map { |a| a * 2 }				                  # => [4, 6, 2, 12]
nums.map.with_index { |a, i| a*(i+1) }                            # => [2, 6, 3, 24]

# Array.reduce collapses everything to one value
nums.reduce { |a, b| a.to_s + "-" + b.to_s }		          # => "2-3-1-6"
nums.reduce(:+)                                                   # => 12

# Array.each goes through each element in the array
mixed.each { |a| print a, "; " }
# => 13; Hello; happy; 3.194; => [13, "Hello", :happy, 3.194]
mixed.each.with_index { |a, i| print i, ": ", a, "\n" }
# 0: 13
# 1: Hello
# 2: happy
# 3: 3.194


# HASH
# ----
grades = { "soumya" => :A_plus, "de" => :B, "arvin" => :A_minus, "shelley" => :A_minus }
# => {"soumya"=>:A_plus, "de"=>:B, "arvin"=>:A_minus, "shelley"=>:A_minus}
grades.size                                       # => 4
grades.keys                                       # => ["soumya", "de", "arvin", "shelley"]
grades.values                                     # => [:A_plus, :B, :A_minus, :A_minus]

grades["de"]
grades["busile"] = :A                             # or, grades.store(k,v)

grades.default = :incomplete
grades["ray"]                                     # => :incomplete

grades.delete("soumya")
grades.select { |key, value| value == :B }        # [["de", :B]]

grades.has_key?("soumya")                         # => true
grades.has_key?("ray")                            # => false
grades.has_value?("ray")                          # => false
grades.has_value?(:A)                             # => true
grades.has_value?(:A_plus)                        # => false


# ARRAY AND HASH CONVERSION
# -------------------------

grades = {"busile"=>:A, "de"=>:B_minus, "soumya"=>:A, "shelley"=>:A_minus, "arvin"=>:A_minus}
# => {"busile"=>:A, "de"=>:B_minus, "soumya"=>:A, "shelley"=>:A_minus, "arvin"=>:A_minus}

# let's convert the hash into an array: it produces an array of arrays
grades_array = grades.to_a
# => [["busile", :A], ["de", :B_minus], ["soumya", :A], ["shelley", :A_minus], ["arvin", :A_minus]]

grades_array[0]				  	# => ["busile", :A]
grades_array[0][0]				# => "busile"
grades_array[0][1]				# => :A
grades_array[2][0]				# => "soumya"

# let's print out the contents of the array in a readable way
grades_array.each { |grade| puts "#{grade[0]} got a #{grade[1]}" }
# busile got a A
# de got a B_minus
# soumya got a A
# shelley got a A_minus
# arvin got a A_minus

new_grades = {}					# => {}

# let's convert the nested array back into a hash table!
grades_array.each { |grade| new_grades[grade[0]] = grade[1] }
# => [:A, :B_minus, :A, :A_minus, :A_minus]

new_grades
# => {"de"=>:B_minus, "busile"=>:A, "soumya"=>:A, "arvin"=>:A_minus, "shelley"=>:A_minus}
