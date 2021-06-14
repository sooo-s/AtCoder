n = gets.chomp.split('').map(&:to_i)

puts n.sum % 9 == 0 ? 'Yes' : 'No'
