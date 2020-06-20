if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'rexml/document'# Подключаем парсер rexml
require_relative '/data/item'
require_relative '/data/book'
require_relative '/data/disc'
require_relative '/data/movie'

products = Item.read_from_XML('data/products.xml')
