n = gets.to_i # 10
a = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts((1..n).to_a == a.sort ? 'Yes' : 'No')
