if File.exist?("./movies.txt")

  movies = File.new("./movies.txt","r:UTF-8")
  movies_array = movies.readlines
  movies.close

  puts "Recomended to you film:"

 i = rand(0..movies_array.size)

    if i%2 == 0
      puts movies_array[i]
      puts movies_array[i+1]
    else
      puts movies_array[i-1]
      puts movies_array[i]
    end

else
  puts "File not found."
end
