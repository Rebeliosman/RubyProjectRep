def get_letters
  slovo = ARGV[0]

  if (slovo == nil || slovo == "")
    abort "Для игры введите загаданное слово в качестве аргумента при запуске программы"
  end

  return slovo.encode("UTF-8").split("")
end

def get_user_input
  letter = ""

  while letter == "" do
    letter = STDIN.gets.encode("UTF-8").chomp
  end

  return letter
end

def check_result(user_input, letters, good_letters, bad_letters)
  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end

  if letters.include? user_input
    good_letters << user_input

    if good_letters.uniq.size == letters.uniq.size
      return 1
    else
      return 0
    end
  else
    bad_letters << user_input
    return -1
  end
end

def print_status(letters, good_letters, bad_letters, errors)
  puts "\nСлово: " + get_word_for_print(letters, good_letters)
  puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

  if errors >= 7
    puts "Вы проиграли :("
  else
    if letters.uniq.size == good_letters.uniq.size
      puts "Поздравляем, вы выиграли!"
    else
      puts "У вас осталось попыток: " + (7 - errors).to_s
    end
  end
end

def get_word_for_print(letters, good_letters)
  result = ""

  for item in letters do
    if good_letters.include?(item)
      result += item + " "
    else
      result += "__ "
    end
  end

  return result
end

def cls
  system "clear"
end
