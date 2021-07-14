cards = gets.chomp.split.map(&:to_i) # n = 10, m = 20

puts cards.sort.pop(2).sum
