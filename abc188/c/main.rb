n = gets.to_i
a = gets.chomp.split.map(&:to_i)

a1, a2 = a.each_slice(a.length/2).to_a
a1_max, a2_max = [a1.max, a2.max]
a1_max_i = a1.find_index(a1_max)
a2_max_i = a.find_index(a2_max)

puts a1_max > a2_max ? a2_max_i + 1 : a1_max_i + 1
