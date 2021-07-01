n = gets.to_i # 10
a = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts a.inject(:gcd)
