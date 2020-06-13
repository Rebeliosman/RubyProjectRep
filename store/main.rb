if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'item.rb'
require_relative 'movie.rb'
require_relative 'book.rb'

leon = Movie.new(price: 999, amount: 5, name: 'Leon')

puts "#{leon.name} movie price #{leon.price} USD"
puts "Avalable amount - #{leon.amount} pieces"
