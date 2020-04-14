user_t = ARGV[0]
user_s = ARGV[1]

if user_t == nil
  puts "What's temp outside?"
  user_t = STDIN.gets.to_i
else
  user_t = user_t.to_i
end

if user_s == nil
  puts "What season is now?"
  user_s = STDIN.gets.chomp.downcase
else
  user_s = user_s.to_i
end

if user_s == "summer"
  if user_t >=15 && user_t<=35
      puts "Nightingales are singing now."
  else
      puts "Nightingales are NOT singing now."
  end
else
  if user_t >=22 && user_t<=30
    puts "Nightingales are singing now."
  else
    puts "Nightingales are NOT singing now. MF. "
  end
end
