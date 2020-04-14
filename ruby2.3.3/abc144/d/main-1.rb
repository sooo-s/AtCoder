a,b,x = gets.chomp.split.map(&:to_f)

include Math

ans = 0
if a*a*b/2 <= x
  ans = atan(2 * (a*a*b - x) / (a*a*a))
else
  ans =  PI / 2 - atan(2*x / (a*b*b))
end

puts ans * 180 / PI
