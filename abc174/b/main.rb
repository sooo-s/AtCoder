n, d = gets.chomp.split.map(&:to_i)
xy = []
n.times { xy << gets.chomp.split.map(&:to_i) }

puts xy.filter { |x, y| x**2 + y**2 <= d**2 }.size
