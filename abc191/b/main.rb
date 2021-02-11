n,x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

puts a.filter{|aa| aa != x}.join(' ')
