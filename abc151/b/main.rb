n, k, m = gets.split.map(&:to_i) # n = 10, m = 20
a = gets.split.map(&:to_i) # n = 10, m = 20

ans = n * m - a.sum

puts ans <= k ? [ans, 0].max : -1
