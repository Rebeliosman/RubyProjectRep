time = Time.now
week_day = time.wday

if File.exist?("./hol.txt")

current_path = File.dirname(__FILE__)
file = File.new(current_path + "/hol.txt")
holidays_arr = file.readlines
file.close

  if (week_day==0 && week_day==6)
    puts "Stay home"
  end

for day in holidays_arr
  day.chomp!
end

date = time.strftime('%d.%m')

  if holidays_arr.include?(date)
    puts 'Goverment holiday'
  else
    puts 'Go to job MF'
 end

else
  puts "file not found"
end
