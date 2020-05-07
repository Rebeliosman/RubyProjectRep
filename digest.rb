if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end


require "digest"

puts "Enter phrase to encrypt"

user_in = STDIN.gets.chomp

puts "Choose method
1 - MD5
2 - SHA1 "

user_ch = STDIN.gets.chomp

if user_ch == 1
    puts "MD5:"
    puts Digest::MD5.hexdigest(user_in)
else
    puts "SHA1: "
    puts Digest::SHA1.hexdigest(user_in)
end
