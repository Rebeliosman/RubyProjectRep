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
require_relative 'disk'
require_relative 'movie'

total_price = 0

list = Item.read_from_XML('/data/products.xml')

choice = nil
while choice != 'x'
Item.showcase(list)
choice = STDIN.gets.chomp
if choice != 'x' && choice.to_i < list.size && choice.to_i >= 0
    item = list[choice.to_i]
    total_price += item.buy
  end
end

puts "Спасибо за покупки, с Вас #{total_price} руб."
