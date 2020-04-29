if File.exist?("./forehead.txt") ||File.exist?("./eyes.txt")||File.exist?("./nose.txt")||File.exist?("./mouth.txt")

  forehead = File.new("./forehead.txt","r:UTF-8")
  eyes = File.new("./eyes.txt","r:UTF-8")
  nose = File.new("./nose.txt","r:UTF-8")
  mouth = File.new("./mouth.txt","r:UTF-8")

  time = Time.now
  file_name = time.strftime("%Y-%m-%d-%H-%M")

  current_path = File.dirname(__FILE__)
  file = File.new(current_path + "/face" + file_name + ".txt", "a:UTF-8")

  line = forehead.readlines
  file.puts line[rand(line.size)]

  line = eyes.readlines
  file.puts line[rand(line.size)]

  line = nose.readlines
  file.puts line[rand(line.size)]

  line = mouth.readlines
  file.puts line[rand(line.size)]

  file.close

else
  puts "One of parts not found."
end
