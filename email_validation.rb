puts "Enter email"
email = STDIN.gets.chomp
if (/^[a-z0-9]+@[a-z0-9]+\.[a-z]+/ =~ email) == nil
  puts "Not correct email"
else
  puts "Correct"
end
