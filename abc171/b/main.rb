N, K = gets.chomp.split.map(&:to_i) # n = 10, m = 20
P = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts P.sort[...K].sum
