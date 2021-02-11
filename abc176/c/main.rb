n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
(1...n).each do |nn|
  next if a[nn - 1] <= a[nn]
  ans += a[nn - 1] - a[nn]
  a[nn] = a[nn - 1]
end

puts ans
