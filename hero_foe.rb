puts "Heroes and Foes (c)"
sleep 1
puts "Enter hero name: Batman, Superman, Logan, Scorpion"
user_input = STDIN.gets.chomp.downcase


case user_input
when 'batman'
  puts "The deadliest Foe is Jocker"
when 'superman'
  puts "The deadliest Foe is Doomsday"
when 'logan'
  puts "The deadliest Foe is Sabertooth"
when 'scorpion'
  puts "The deadliest Foe is Sub-zero"
else
  puts "WTF"
end
