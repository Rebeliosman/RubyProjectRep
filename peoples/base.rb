require_relative 'people'

hmyr = People.new('Гаврила', 'Петрович', 'Попов', 15)
kosoy = People.new('Фёдор', 'Петрович', 'Матросов', 88)
alibaba = People.new('Василий', 'Алибабаевич', 'Алибибаев', 65)

puts hmyr.full_name

if hmyr.old?
puts "Он пожилой"
end

puts kosoy.full_name

if kosoy.old?
puts "Он пожилой"
end

puts alibaba.full_name

if alibaba.old?
puts "Он пожилой"
end
