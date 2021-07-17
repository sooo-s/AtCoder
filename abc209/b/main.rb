N, X = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A = gets.chomp.split.map(&:to_i) # n = 10, m = 20

sum = A.map.with_index { |v, i| (i + 1).even? ? v - 1 : v }.sum

puts sum <= X ? 'Yes' : 'No'
