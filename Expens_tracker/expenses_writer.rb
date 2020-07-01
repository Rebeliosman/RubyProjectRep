require "rexml/document" # парсер xml
require "date" # даты

puts "What did you spend money on?"
expense_text = STDIN.gets.chomp

puts "How much did you spend?"
expense_amount = STDIN.gets.chomp.to_i

puts "The date of spending in the DD.MM.YYYY format (empty field - today)?"
date_input = STDIN.gets.chomp

# If про пустое поле даты
expense_date = nil

if date_input == nil
  expense_date = Date.today #использование Date
else
  begin
    expense_date = Date.parse(date_input) #парсим в формат даты
  rescue ArgumentError #перехват ошибки неправильного ввода
    expense_date = Date.today
  end
end

puts "In which category put the waste?"
expense_category = STDIN.gets.chomp

#работа с XML файлом
current_path = File.dirname(__FILE__)
file_name = current_path + "/data/expenses.xml"

file = File.new(file_name, "r:UTF-8")
doc = nil

begin
  doc = REXML::Document.new(file) # переменная запарсеная из файла XML
rescue REXML::ParseException => e # если парсер ошибся при чтении файла
  puts "The XML file seems to be broken :("
  abort e.message
end

file.close

# запись трат

expenses = doc.elements.find('expenses').first #корневой элемент
expense = expenses.add_element 'expense', {
    'date' => expense_date.strftime('%Y.%m.%d'), # or Date#to_s
    'category' => expense_category,
    'amount' => expense_amount
}

expense.text = expense_text

file = File.new(file_name, "w:UTF-8")

doc.write(file, 2)
file.close

puts "Information saved successfully"
