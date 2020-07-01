require "rexml/document" # парсер xml
require "date" # даты

puts "******This is your WISHBOX******\n"

puts "What is your WISH?"
wish_input = STDIN.gets.chomp

puts "The date you want to fulfill this wish? (DD.MM.YYYY format, empty field - today)"
date_input = STDIN.gets.chomp

# If про пустое поле даты
wish_date = nil

if date_input == nil
  wish_date = Date.today #использование Date
else
  begin
    wish_date = Date.parse(date_input) #парсим в формат даты
  rescue ArgumentError #перехват ошибки неправильного ввода
    wish_date = Date.today
  end
end

#работа с XML файлом
current_path = File.dirname(__FILE__)
file_name = current_path + "/data/box.xml"

unless File.exist?(file_name)

  File.open(file_name, 'w:UTF-8') do |file|

    file.puts "<?xml version='1.0' encoding='UTF-8'?>"
    file.puts '<wishes></wishes>'
  end
end

file = File.new(file_name, "r:UTF-8")
doc = nil

begin
  doc = REXML::Document.new(file) # переменная запарсеная из файла XML
rescue REXML::ParseException => e # если парсер ошибся при чтении файла
  puts "The XML file seems to be broken :("
  abort e.message
end

# запись

wishes = doc.elements.find('whishes').first #корневой элемент
wish = wishes.add_element 'wish', {
    'date' => wish_date.strftime('%Y.%m.%d'), # or Date#to_s
}

wish.text = wish_input

file = File.new(file_name, "w:UTF-8")

doc.write(file, 2)
file.close

puts "Wish put in your wishbox successfully"
