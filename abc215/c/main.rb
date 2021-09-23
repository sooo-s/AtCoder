s, k = gets.chomp.split
s_sort = s.chars.sort
k = k.to_i

puts s_sort.permutation(s.size).uniq[k - 1].join
