A, B = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts (A - B) / 3.to_f + B
