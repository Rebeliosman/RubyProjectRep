if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'rexml/document'# Подключаем парсер rexml
require 'date' #и библиотеку date

file_name = File.dirname(__FILE__) + '/data/expenses.xml'

unless File.exist?(file_name)
  abort "Извиняемся, хозяин, файлик #{file_name} не найден." # Не найден файл, завершаем программу.
end

file = File.new(file_name) # открытие файла

doc = REXML::Document.new(file)

file.close

amount_by_day = {}


doc.elements.each('expenses/expense') do |item|

  loss_sum = item.attributes['amount'].to_i

  loss_date = Date.parse(item.attributes['date'])

  amount_by_day[loss_date] ||= 0

  amount_by_day[loss_date] += loss_sum
end

sum_by_month = {}

amount_by_day.keys.sort.each do |key|

  sum_by_month[key.strftime('%B %Y')] ||= 0

    sum_by_month[key.strftime('%B %Y')] += amount_by_day[key]
end

current_month = amount_by_day.keys.sort[0].strftime('%B %Y')

puts "------[ #{current_month}, всего потрачено: " \
  "#{sum_by_month[current_month]} р. ]--------"
amount_by_day.keys.sort.each do |key|
  if key.strftime('%B %Y') != current_month

    current_month = key.strftime('%B %Y')

    puts "------[ #{current_month}, всего потрачено: " \
      "#{sum_by_month[current_month]} р. ]--------"
  end

  puts "\t#{key.day}: #{amount_by_day[key]} р."
end
