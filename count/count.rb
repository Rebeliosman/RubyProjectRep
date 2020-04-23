  path = ARGV[0]

if path == nil || path == ""
  puts "Enter filename like an argument."
else
  if File.exist?(path)
    file = File.new(path,"r:UTF-8")
    content = file.readlines
    file.close
    puts "File #{path} opened"
    puts "Lines in file - #{content.size}"
    empty_lines = 0
    filled_lines = 0
    i=1
      while i<= content.size
      line = content[i]
        if line == "\n"
          empty_lines += 1
        else
          filled_lines +=1
        end
        i+=1
      end

      puts "Emty lines in file - #{empty_lines}"
      puts "Filled lines in file - #{filled_lines}"
      puts "Last 5 lines in file  - "
      i=5
      while i>=1
      five_lines = content[-i]
      puts five_lines
      i -=1
      end
  else
      puts "File not found."
  end
end
