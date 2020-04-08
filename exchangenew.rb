puts "What kind of currency U have? \n 1.Rubles \n 2.Dollars"
cur = gets.to_i
puts "What is the exchange rate RUB to USD?"
ex = gets.to_f
if (cur==1)
  puts "How nuch U have in Rubles?"
  cur_n = gets.to_i
  dol = (cur_n/ex).round(2)
  puts ("You have " + dol.to_s + " Dollars")
else
  puts "How nuch U have in Dollars?"
  cur_n = gets.to_i
  rub = (cur_n * ex).round(2)
  puts ("You have " + rub.to_s + " Rubles")
end
