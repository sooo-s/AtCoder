a, b = gets.chomp.split.map(&:to_i) # n = 10, m = 20

x = (a + b) / 2
puts [x, a - x].join(' ')
