n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)

ans = 0
d.combination(2).each do |v|
  ans += v[0] * v[1]
end

puts ans

