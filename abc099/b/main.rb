A, B = gets.chomp.split.map(&:to_i) # n = 10, m = 20

diff = B - A
puts (1...diff).sum - A
