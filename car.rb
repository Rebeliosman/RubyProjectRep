car = ["Ford",
  "Nissan",
  "Toyota",
  "Land Cruisier",
  "Micubishi",
  "Renault",
  "Gaz",
  "Vaz",
  "Huayz",
  "Volga"]
size = car.size
puts "We have " + size.to_s + " brands of cars. What brand do U want?"
want = gets.to_i - 1
if (want < 0 || want > size)
  puts "Wow, we have only " + size.to_s + " brands of cars."
else
  puts "Congrats!!! U have a " + car.fetch(want).to_s
end
