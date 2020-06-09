def method
  c = 3

  puts "variable '$a': #{defined?($a)}"
  puts "variable 'b': #{defined?(b)}"
  puts "variable 'c': #{defined?(c)}"

end
$a = 1
b = 2

method

puts "variable '$a': #{defined?($a)}"
puts "variable 'b': #{defined?(b)}"
puts "variable 'c': #{defined?(c)}"
