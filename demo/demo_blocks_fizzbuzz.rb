# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game

# Naive fizzbuzz method that yields fizzbuzz game results one at a time
def fizzbuzz(size)
  1.upto size do |num|
    if num % 15 == 0
      result = 'FizzBuzz'
    elsif num % 5 == 0
      result = 'Buzz'
    elsif num % 3 == 0
      result = 'Fizz'
    else
      result = num.to_s
    end

    yield result
  end
end

# Examples of how to take advantage of it yielding results:
fizzbuzz(30) { |line| puts line }

fizzbuzz(30) { |number| print "#{number}, " }

arr = []
fizzbuzz(30) { |n| arr << n }
