# app for finding 3letter words
current_path = File.dirname(__FILE__)

if File.exist?(current_path + "/text.txt")

file = File.new(current_path + "/text.txt")

text = file.read

file.close

cleaned_text = text.gsub(/[,\(\)\.\-;:\?\!]/, '')

words = cleaned_text.split

puts words.count { |w| w =~ /^\S{3}$/ }

else
  puts "File not found."
end
