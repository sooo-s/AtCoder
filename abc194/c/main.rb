n = gets.to_i # 10
a = gets.split.map(&:to_i) # n = 10, m = 20

$cum_sum = [0]
a.each do |i|
  $cum_sum << $cum_sum[-1] + i
end

sum = 0
a.each_with_index do |aa, i|
  tmp = $cum_sum[n] - $cum_sum[i + 1]
  sum += aa**2 * (n - 1) + aa * tmp * -2
end

puts sum
