array = ["Rock", "Paper", "Scissors"]
puts "Choose your destiny:"
puts "1-Rock, 2-Paper, 3-Scissors"
player_choise = gets.to_i - 1
puts "U choose " + array.fetch(player_choise).to_s
pc_choise = rand(3)
puts "PC choose " + array.fetch(pc_choise).to_s
# Используем Elseif
if player_choise == pc_choise
  puts "It's a draw."
elsif player_choise == 0 && pc_choise == 2
  puts "U win"
elsif player_choise == 1 && pc_choise == 0
  puts "U win"
elsif player_choise == 2 && pc_choise == 1
  puts "U win"
else
  puts "PC win"
end
