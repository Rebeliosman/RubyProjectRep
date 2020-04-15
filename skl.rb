def sklonenie (number, sl1, sl2, sl3)
  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end

if (number>=11 && number <14)
  return sl3
end

if number%100>=11 && number%100<=14
return sl3
end

if (number == 14)
  return sl3
end

ost = number%10

if (ost == 1)
  return sl1
end

if (ost >= 2 && ost <= 4)
  return sl2
end

if (ost >= 5 && ost <= 9 || ost == 0)
  return sl3
end
end
skolko = ARGV[0].to_i
puts "#{skolko} #{sklonenie(skolko, "негритёнок", "негритёнка", "негритят")} " +
  "#{sklonenie(skolko, "пошел", "пошли", "пошли")} купаться в море!"
