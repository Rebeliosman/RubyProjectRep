if File.exist?("./movies.txt")

  movies = File.new("./movies.txt","r:UTF-8")
  movies_array = movies.readlines
  movies.close

  puts "Recomended to you film:"

  puts movies_array.sample

else
  puts "File not found."
end
