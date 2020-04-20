require_relative 'bodybilder'

man_1 = BodyBilder.new (0), (0), (0)
man_2 = BodyBilder.new (0), (0), (0)
man_3 = BodyBilder.new (0), (0), (0)
i=0
while i < 5
man_1.traning('biceps')
i+=1
end
puts "First bodybilder"
man_1.show_muscules
i=0
while i < 10
man_2.traning('biceps')
i+=1
end
puts "Second bodybilder"
man_2.show_muscules
i=0
while i < 6
man_3.traning('biceps')
i+=1
end
puts "Third bodybilder"
man_3.show_muscules
