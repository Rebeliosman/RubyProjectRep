array = []
index=1
puts "Enter N"
user_input = gets.to_i
while  index <= user_input do
    array << index
    index+=1
end
puts array.to_s
puts "Summ " + array.sum.to_s
