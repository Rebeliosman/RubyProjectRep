require 'cyrillizer'
puts "Enter transliteration phrase:"
tr = gets.chomp.encode("UTF-8")
puts "Translited phrase:"
  if tr == tr.to_lat
    puts tr.to_cyr
  else
    puts tr.to_lat
  end
