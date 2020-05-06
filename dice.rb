def show_rolling_die
  100.times do

    print "#{rand(6) + 1}\r"
    sleep 0.01
  end
end

puts 'How many dice?'
number = gets.to_i
puts "-----"

summ_dice = 0

number.times do

  show_rolling_die
  dice = rand(6) + 1
  summ_dice = dice + summ_dice
  puts dice
end

puts "Summ of dices is #{summ_dice}"
