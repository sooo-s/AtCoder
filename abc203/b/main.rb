n, k = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts 100 * (1..n).sum * k + (1..k).sum * n
