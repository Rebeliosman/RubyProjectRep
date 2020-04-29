current_path = File.dirname(__FILE__)
file = File.new(current_path + "/Hello.txt", "a:UTF-8")
file.puts("Hello file")
file.close
