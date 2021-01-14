n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort.reverse
a_size = a.size

$cum_sum = [0]
a.reverse.each do |i|
  $cum_sum << $cum_sum[-1] + i
end

sum = 0
$cum_sum.reverse!
a.each.with_index do |ai, i|
  sum += ai * (a_size - 1 - i) - $cum_sum[i+1]
end

puts sum
