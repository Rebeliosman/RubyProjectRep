if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative "game"
require_relative "result_printer"

puts "Игра виселица. Версия 2. (с)\n\n"
sleep 1

slovo = ARGV[0]
game = Game.new(slovo)
printer = ResultPrinter.new

while game.status == 0 do
  printer.print_status(game)
  game.ask_next_letter
end

 printer.print_status(game)
