def guess (user_choice, pc_choice)
  str =""
  dif = (pc_choice-user_choice).abs
  if dif == 0
      abort "U are right"
  else
        if user_choice < pc_choice && dif > 3
          str = "Far (greater)"
        else
              if user_choice < pc_choice && dif <3
                str = "CLose (greater)"
              else
                    if user_choice > pc_choice && dif > 3
                      str = "Far (less)"
                    else
                      str = "Close (less)"
                    end
              end
        end
  end
return str
end
puts "Guess the random number from 0 to 15. U have 3 attempts."
num = rand(16)
puts num
# 1st
puts "First attempt"
gues = gets.to_i
ans = guess(gues, num)
puts ans
# 2nd
puts "Second attempt"
gues = gets.to_i
ans = guess(gues, num)
puts ans
# 3d
puts "Third attempt"
gues = gets.to_i
ans = guess(gues, num)
puts ans
puts "Out of lack. The number is " + num.to_s
