if File.exist?("./quotes.txt")
  
  file = File.new("./quotes.txt","r:UTF-8")
  content = file.readlines
  puts content.sample

else
  puts "Файл не найден"
end
