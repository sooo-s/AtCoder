N = gets.to_i # 10
W = gets.chomp.split.map(&:to_i) # n = 10, m = 20

diff = (1...N).map do |n|
  s1 = W[0..(n - 1)].sum
  s2 = W[n..].sum
  (s1 - s2).abs
end

p diff.min
