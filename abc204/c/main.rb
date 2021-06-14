n, m = gets.chomp.split.map(&:to_i) # n = 10, m = 20
ab = []
n.times { ab << gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

p n, m, ab
