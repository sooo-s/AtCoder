a, b, c, d = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts [a, b].product([c, d]).map { |x, y| x * y }.max
