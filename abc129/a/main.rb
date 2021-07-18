A = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts A.sort[0..1].sum
