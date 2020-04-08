puts "Guess the random number from 0 to 15. U have 3 attempts."
num = rand(16)
puts num
puts "First attempt"
gues = gets.to_i
dif = (num-gues).abs
if dif == 0
    abort "U are right"
else
      if gues < num && dif > 3
        puts "Far (greater)"
      else
            if gues < num && dif <3
              puts "CLose (greater)"
            else
                  if gues > num && dif > 3
                    puts "Far (less)"
                  else
                    puts "Close (less)"
                  end
            end
      end
end
# 2nd
puts "Second attempt"
gues = gets.to_i
dif = (num-gues).abs
if dif == 0
    abort "U are right"
else
      if gues < num && dif > 3
        puts "Far (greater)"
      else
            if gues < num && dif <3
              puts "CLose (greater)"
            else
                  if gues > num && dif > 3
                    puts "Far (less)"
                  else
                    puts "Close (less)"
                  end
            end
      end
end
# 3d
puts "Third attempt"
gues = gets.to_i
dif = (num-gues).abs
if dif == 0
    abort "U are right"
else
      if gues < num && dif > 3
        puts "Far (greater)"
      else
            if gues < num && dif <3
              puts "CLose (greater)"
            else
                  if gues > num && dif > 3
                    puts "Far (less)"
                  else
                    puts "Close (less)"
                  end
            end
      end
end

puts "Out of lack. The number is " + num.to_s
