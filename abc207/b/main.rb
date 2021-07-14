a, b, c, d = gets.chomp.split.map(&:to_i) # n = 10, m = 20

diff = c * d - b

puts 0 < diff ? (a + diff - 1) / diff : -1
