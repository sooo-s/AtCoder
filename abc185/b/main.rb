n, m, t = gets.chomp.split.map(&:to_i)
ab = []
m.times { ab.push gets.chop.split.map(&:to_i) }

puts n, m, t, ab
