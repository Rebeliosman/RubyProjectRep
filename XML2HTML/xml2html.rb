if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'rexml/document'# парсер rexml

xml_file_name = File.dirname(__FILE__) + '/XML_Card.xml'
unless File.exist?(xml_file_name)
  abort "File #{xml_file_name} not found." # Не найден файл
end

xml_file = File.new(xml_file_name)
xml_card = REXML::Document.new(xml_file)
xml_file.close

fields_arr = {}

['name','prof', 'phone', 'email', 'description'].each do |field|
  fields_arr[field] = xml_card.root.elements[field].text
end

html_card = REXML::Document.new


html_card.add_element('html', {'lang' => 'ru'})
head = html_card.root.add_element('head')
head.add_element('meta', 'charset' => 'UTF-8')
head.add_element('title').add_text("#{fields_arr["name"]}")
body = html_card.root.add_element('body')
body.add_element('p').add_element('img', 'src' => "IMG_221217.jpg", 'alt'=> "Photo", 'width'=> "291", 'height'=> "390")
body.add_element('p').add_text("#{fields_arr["name"]}")
body.add_element('p').add_text("#{fields_arr["prof"]}")
body.add_element('p').add_text("Phone: #{fields_arr["phone"]}")
body.add_element('p').add_text("Email:").add_element('a', "href"=>fields_arr["email"]).add_text("#{fields_arr["email"]}")


html_file_name = File.dirname(__FILE__) + '/HTML_Card.html'
html_file = File.new(html_file_name, 'w:UTF-8')

html_file.puts "<!DOCTYPE HTML>"

html_card.write(html_file, 2)
html_file.close
