n,k = gets.chomp.split.map &:to_i
p = 10 ** 9 + 7
counter = 0

$cum_sum = [0]
(1..n+1).each do |i|
  $cum_sum << $cum_sum[-1] + i
end

def calc(k)
  min =  $cum_sum[k] - $cum_sum[0]
  max = $cum_sum[-1] - $cum_sum[-1 - k]
  return max - min + 1
end

(k..n+1).each do |i|
  counter += calc(i) % p
end

puts counter % p
