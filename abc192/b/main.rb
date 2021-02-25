s = gets.chomp.chars # ["s", "t", "r", "i", "n", "g"]

odds, evens = s.partition.with_index { |_x, i| i.even? }

puts odds.all? { |d| d == d.downcase } && evens.all? { |u| u == u.upcase } ? 'Yes' : 'No'
