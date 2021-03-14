m, h = gets.chomp.split.map(&:to_i)

puts h % m == 0 ? 'Yes' : 'No'
