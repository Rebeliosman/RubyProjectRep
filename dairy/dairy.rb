current_path = File.dirname(__FILE__)
time = Time.now
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")
separator = "-----------------------------------------"
file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

line = nil
all_lines = []

file.print("\n\r" + time_string + "\n\r")

puts "Save till the \"end\" into file."

while line != "end" do
     line = STDIN.gets.encode("UTF-8").chomp
     all_lines << line
end

all_lines.pop

for item in all_lines do
  file.puts(item)
end

file.puts(separator)
file.close

puts "Messange sucseed entered in #{time_string}"
