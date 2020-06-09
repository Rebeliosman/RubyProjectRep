passenger = {
  ticket_number: 'РМ2255448 05058',
  first_name: 'Alex',
  second_name: 'Alexovich',
  last_name: 'Pukin',
  passport_number: '45 99 505281',
  departure_city: 'Moscow',
  destination_city: 'San-Diego'
},
{
  ticket_number: 'РМ225546548 056568',
  first_name: 'Anchous',
  second_name: 'Anchousovich',
  last_name: 'Zuka',
  passport_number: '45 99 505281',
  departure_city: 'Moscow',
  destination_city: 'San-Pedro'
},
{
  ticket_number: 'РМ22355448 0503358',
  first_name: 'Diana',
  second_name: 'Shaokanovna',
  last_name: 'Mortal',
  passport_number: '45 99 505281',
  departure_city: 'Moscow',
  destination_city: 'San-Huesos'
}

passenger.each_with_index do |passenger, number|
  puts "* * * Место № #{number + 1} * * *"
  puts "Билет № #{passenger[:ticket_number]}"
  puts "Маршрут: #{passenger[:departure_city]} -> " \
    "#{passenger[:destination_city]}"
  puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. " \
    "#{passenger[:last_name]}"
  puts "Паспорт: #{passenger[:passport_number]}"
  puts
end
