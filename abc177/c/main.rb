n = gets.to_i # 10
a = gets.split.map(&:to_i) # n = 10, m = 20

ans = 0
sum = a.sum
(n - 1).times do |nn|
  sum -= a[nn]
  ans += sum * a[nn]
  ans %= 10**9 + 7
end

puts ans
