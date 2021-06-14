n = gets.to_i # 10

c = 0
(1..n - 1).each do |a|
  c += (n - 1) / a
end

puts c
