# Demonstrate File I/O in Ruby

# Open and read a file using a block
def read_file_by_line
  yellow_file = File.open('yellow.txt', 'r')
  yellow_lines = []
  yellow_file.each_line do |line|
    yellow_lines << line
  end
  yellow_file.close   # don't forget to close!!!
  yellow_lines
end

# Open and read a file using a block
def read_file_by_block
  File.open('yellow.txt', 'r') do |file|
    while line = file.gets
      puts line
    end
  end                 # file automagically closed
end

# Open and read a file in one slurp!
def read_file_by_slurp
  red_lines = File.read('red.txt')
  red_red_wine = red_lines.split("\n")
end


# Open and (re)write a file using a block
def write_file_by_block
  File.open('world.txt', 'w') do |file|
    file.puts '"Around The World"'
    file.puts

    lyric = "Around the world, around the world"

    18.times do
      4.times { file.puts lyric }
      file.puts
    end
  end
end

# Open and spit out many lines at once
def write_file_by_spitting
  lyric = "Around the world, around the world"
  world_lyrics = ""
  18.times do
    4.times { world_lyrics << lyric + "\n" }
    world_lyrics <<  "\n"
  end

  File.write('world.txt', "\"Around The World\"\n\n", mode: 'w')
  File.write('world.txt', world_lyrics, mode: 'a')
end
