n = gets.to_i # 10
l = gets.chomp.split.map(&:to_i) # n = 10, m = 20

bou = l.sort.combination(3)

puts bou.to_a.filter { |a, b, c| a + b > c && a != b && b != c }.size
