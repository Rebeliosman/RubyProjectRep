def stars (n)
item=1
a = ""
while item <= n
a << "*"
item +=1
end
puts a
end

puts "How much stars on pogoni do you want?"
str = STDIN.gets.to_i
puts "Here is your stars"
stars(str)
