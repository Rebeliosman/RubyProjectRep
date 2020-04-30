puts "Enter the sentence pls:"

string = STDIN.gets.encode('UTF-8').chomp

hashtags_array = string.scan(/#[[:word:]-]+/)

puts "Hashtags founded:"
puts hashtags_array.to_s
