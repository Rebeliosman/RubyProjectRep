puts "What is the exchange rate?"
ex = gets.to_f
puts "How nuch U have in Rubles?"
ru = gets.to_f
dol = (ru/ex)
dol = dol.round(2)
puts ("You have " + dol.to_s + " Dollars")
