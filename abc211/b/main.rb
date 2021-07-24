S = 4.times.map { gets.chomp.to_s } # [[1, 2], [3, 4], [5, 6]]

puts S.sort == %w[2B 3B H HR] ? 'Yes' : 'No'
