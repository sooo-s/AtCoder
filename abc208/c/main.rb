N, K = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A = gets.chomp.split.map(&:to_i) # n = 10, m = 20

div, mod = K.divmod(N)
limit = mod.zero? ? 0 : A.sort[mod - 1]

A.each do |a|
  puts a <= limit ? div + 1 : div
end
