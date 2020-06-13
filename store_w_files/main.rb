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


current_path = File.dirname(__FILE__)
film = Movie.from_file(current_path + '/data/movies/01.txt')
book = Book.from_file(current_path + '/data/books/01.txt')

puts film.to_s
puts book.to_s
