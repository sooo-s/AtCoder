n = gets.to_i

min = 10 * 7
(1..n).each do |a|
  b = n / a
  c = n % a
  min = [min, (a - b).abs + c].min
end

p min
