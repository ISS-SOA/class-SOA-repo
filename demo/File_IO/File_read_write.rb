# Open and read files using a block
File.open('yellow.txt', 'r') do |file|
  while line = file.gets
    puts line
  end
end

# Open and read files in one slurp!
lines = File.read('red.txt')
