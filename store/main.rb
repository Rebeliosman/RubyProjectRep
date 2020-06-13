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


items = []

items << Movie.new(
  title: 'Leon',
  year: '1994',
  director: 'L. Besson',
  price: 9,
  amount: 10
)

items << Book.new(
  title: 'Idiot',
  genre: 'novel',
  author: 'F. Dostoevsky',
  price: 2,
  amount: 10
)

items << Book.new(
  title: 'Moman',
  genre: 'novel',
  author: 'F. Postoevsky',
  price: 5,
  amount: 5
)

puts 'Item list:'
puts
items.each { |item| puts item }
