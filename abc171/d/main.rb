N = gets.to_i # 10
A = gets.chomp.split.map(&:to_i) # n = 10, m = 20
Q = gets.to_i # 10
BC = Q.times.map { gets.split.map(&:to_i) }

a_sum = A.sum
a_tally = A.tally
a_tally.default = 0

BC.each do |b, c|
  b_num = a_tally[b]
  diff = (c - b) * b_num
  a_sum += diff
  puts a_sum

  a_tally[b] = 0
  a_tally[c] += b_num
end
