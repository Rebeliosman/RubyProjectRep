def otrez (otr, array, n)
item=0
array_2 =[]
while item <= otr-1 && item <= n-1
array_2 << array[item]
item +=1
end
return array_2
end
colbasa = [1, 2, 3, 4, 5, 6, 7, 8 , 9]
puts"My colbosa is"
puts colbasa.to_s
puts "Enter amount of colbasa you want."
col = STDIN.gets.to_i
new_colbasa = otrez(col, colbasa, colbasa.count)
puts "Your kolbasa is that lenght"
puts new_colbasa.to_s
