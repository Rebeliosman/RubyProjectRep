coin = rand(11)
if (coin == 5)
  puts "Side"
else
  coin = rand(2)
  if (coin == 0)
    puts "Number"
  else
    puts "Bird"
  end
end
