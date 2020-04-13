array =[]
index=1
puts "Length of the array?"
user_input = gets.to_i
while index <= user_input do
  array << rand(100)
  index += 1
end
puts "This is your random array."
puts array.to_s
puts "Maximum value from array is " + array.max.to_s
