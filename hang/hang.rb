if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require "./methods.rb" #подключение файла методов
errors = 0
good_letters = []
bad_letters = []
letters = get_letters
cls
while errors < 7 do
  # отгадываем
  print_status(letters, good_letters, bad_letters, errors)

  puts "\nВведите следующую букву"

  user_input = get_user_input

  result = check_result(user_input, letters, good_letters, bad_letters)

  if result == -1
    errors +=1
  elsif result ==1
    print_status(letters, good_letters, bad_letters, errors)
    break
  end
end
