if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'rexml/document'# Подключаем парсер rexml

file_name = File.dirname(__FILE__) + '/b_card.xml'
unless File.exist?(file_name)
  abort "File #{file_name} not found." # Не найден файл, завершаем программу.
end

file = File.new(file_name)
card = REXML::Document.new(file)
file.close
