require "rexml/document" # парсер xml
require "date" # даты

current_path = File.dirname(__FILE__)
file_name = current_path + "/data/box.xml"

unless File.exist?(file_name)
  puts "File #{file_name} does not exist."
end

file = File.new(file_name, "r:UTF-8")
doc = nil

begin
  doc = REXML::Document.new(file) # переменная запарсеная из файла XML
rescue REXML::ParseException => e # если парсер ошибся при чтении файла
  puts "The XML file seems to be broken :("
  abort e.message
end


upcoming_arr = []

paste_arr = []



doc.elements.each("wishes/wish") do |wish|

  date = Date.parse(wish.attributes['date'])
  wish_text = wish.text

    if date < Date.today
      string = "#{date.to_s.chomp}: #{wish_text.chomp}"
      paste_arr.push(string)
    else
      string = "#{date.to_s.chomp}: #{wish_text.chomp}"
      upcoming_arr.push(string)
    end

end
puts "Pasted WISHES:\n"
puts paste_arr
puts "Upcoming WISHES:\n"
puts upcoming_arr
