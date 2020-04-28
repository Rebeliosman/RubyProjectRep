require "pony"
require 'io/console'

my_mail = 'rebeliosman@yandex.ru'

puts "Enter password #{my_mail} for sending e-mail:"
password = STDIN.gets.chomp

puts "Reciever e-mail:"
send_to = 'rebeliosman@gmail.com'

puts "E-mail text:"
body = "Test massenge from my mail app ruby."

Pony.mail({
  :subject => "Ruby test!",
  :body => body,
  :to => send_to,
  :from => my_mail,
  :via => :smtp,
  :via_options => {
    :address => 'smtp.yandex.ru', # это хост, сервер отправки почты
    :port => '465',
    :tls => true,
    :user_name => my_mail,
    :password => password,
    :authentication => :plain
  }
})

puts 'E-mail sent!'
