if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'rexml/document'# Подключаем парсер rexml
require_relative 'item'
require_relative 'book'
require_relative 'disc'
require_relative 'movie'

total_price = 0

products = Item.read_from_XML('/products.xml')


choice = nil
while choice != 'x'
  Item.showcase(products)
  choice = STDIN.gets.chomp

    if choice != 'x' && choice.to_i < products.size && choice.to_i >= 0
      product = products[choice.to_i]
      total_price += product.buy
    end
end

puts "Thanks for shopping, #{total_price} USD to pay."
