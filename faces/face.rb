if File.exist?("./forehead.txt") ||File.exist?("./eyes.txt")||File.exist?("./nose.txt")||File.exist?("./mouth.txt")

  forehead = File.new("./forehead.txt","r:UTF-8")
  eyes = File.new("./eyes.txt","r:UTF-8")
  nose = File.new("./nose.txt","r:UTF-8")
  mouth = File.new("./mouth.txt","r:UTF-8")

  line = forehead.readlines
  puts line[rand(line.size)]

  line = eyes.readlines
  puts line[rand(line.size)]

  line = nose.readlines
  puts line[rand(line.size)]

  line = mouth.readlines
  puts line[rand(line.size)]

else
  puts "One of parts not found."
end
