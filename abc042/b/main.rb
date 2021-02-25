n, l = gets.split.map(&:to_i) # n = 10, m = 20
s = []
n.times { s << gets.chomp.to_s } # [1, 2, 3]

puts s.sort.join
