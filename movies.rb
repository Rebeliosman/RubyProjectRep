require_relative "film"

puts "What your favirite movie director?"
user_dir = STDIN.gets.chomp

i=0
db = []
while i<=2 do
puts "One of movies of this director?"
user_mov = STDIN.gets.chomp
film = Film.new (user_dir), (user_mov)
db << film
i+=1
end
puts "may be you wanna watch: "
puts db[rand(2)].print_director
puts db[rand(2)].print_movie
