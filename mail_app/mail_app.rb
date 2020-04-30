require "pony"
require 'io/console'

my_mail = 'rebeliosman@gmail.com'

puts "Enter password #{my_mail} for sending e-mail:"
password = noecho(&:gets).chomp

puts "Reciever e-mail:"
send_to = STDIN.gets.chomp

puts "Enter subject"
sub = STDIN.gets.chomp

puts "Message test:"
body = STDIN.gets.chomp

success = false

begin

Pony.mail({
  :subject => sub,
  :body => body,
  :to => send_to,
  :from => my_mail,
  via: :smtp,
  via_options: {
    address: 'smtp.gmail.com',
    port: '587',
    enable_starttls_auto: true,
    user_name: my_mail,
    password: password,
    authentication: :plain,
  }
})

success = true

rescue SocketError
  puts "Cant connect to server. "
rescue Net::SMTPFatalError => error
  puts "Inccorect e-mail address. " + error.message
rescue Net::SMTPAuthenticationError => error
  puts "Incorrect password. " + error.message
ensure
  puts "We try."
end

if success == true
  puts 'E-mail sent!'
else
  puts 'E-mail not sent!'
end
