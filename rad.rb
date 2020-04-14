def sq (radius)
#  if !radius.is_a?(String)
#    radius = 0
#  end
return 3.14*radius*radius
end

rad = ARGV[0].to_f
square = sq(rad)
puts square.to_f
