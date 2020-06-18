require 'rexml/document'# парсер XML
require 'date' # библиотека для работы с датами

current_path = File.dirname(__FILE__) # путь до директории исп. файла
file_name = current_path + '/data/expenses.xml'  # файл

file = File.new(file_name)

file_xml = REXML::Document.new (file) # новый файл REXML из файла XLM

amount_by_day = Hash.new # пустой асс. массив

file_xml.elements.each("expenses/expense") do |item|
loss_sum = item.attributes['amount'].to_i #сумма сколько потратили из параметра amount
loss_date = Date.parse (item.attributes['date']) #когда потратили из параметра date

amount_by_day[loss_date] ||= 0 # иницилизация нулем значения хэша, если этой даты еще не было
amount_by_day[loss_date] += loss_sum # + трата в этот день
end

file.close

#собераем в массив сумму расходов за каждый месяц
sum_by_month = Hash.new
amount_by_day.keys.sort.each do |key|
sum_by_month[key.strftime("%B %Y")] ||= 0  # key.strftime("%B %Y") вернет одинаковую строку для всех дней одного месяца
sum_by_month[key.strftime("%B %Y")] += amount_by_day[key] # + сумма расходов за следующий день
end

# вывод

current_month = amount_by_day.keys.sort[0].strftime("%B %Y")
puts "------[ #{current_month}, всего потрачено: #{sum_by_month[current_month]} р. ]--------"

# цикл по всем дням
amount_by_day.keys.sort.each do |key|
if key.strftime("%B %Y") != current_month
  puts "------[ #{current_month}, всего потрачено: #{sum_by_month[current_month]} р. ]--------"
end
# расходы за конкретный день
puts "\t#{key.day}: #{amount_by_day[key]} р."
end
