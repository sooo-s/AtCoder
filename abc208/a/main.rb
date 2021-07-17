a, b = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts(a * 1 <= b && b <= a * 6 ? 'Yes' : 'No')
