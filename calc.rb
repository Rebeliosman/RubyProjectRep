
puts "First argument:"
first_arg = STDIN.gets.chomp.to_f
puts "Second argument:"
second_arg = STDIN.gets.chomp.to_f
puts "Mathematical action (+, -, *, /)"
math_action = STDIN.gets.chomp
puts "Answer is:"

    if math_action == "+"
      puts first_arg + second_arg
    elsif math_action == "-"
      puts first_arg - second_arg
    elsif math_action == "*"
      puts first_arg * second_arg
    elsif math_action == "/"

    begin
      puts first_arg / second_arg
    rescue ZeroDivisionError
    puts "Divided by zero"
    end

    else
      puts "Math action error"
    end
