a,b,x = gets.split.map(&:to_f)

include Math

rad = (0.0..(PI/2)).bsearch do |rad|
  h = a * tan(rad)
  v =  h < b ? a * b - a * h / 2 : b * b / tan(rad) / 2
  v < (x / a)
end

puts rad / PI * 180
