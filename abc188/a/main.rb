x, y = gets.chomp.split.map(&:to_i)

puts (x -y).abs <= 2 ? 'Yes' : 'No'
