if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/productcollection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')


collection.sort!(by: :title, order: :asc)

collection.to_a.each do |product|
  puts product
end
