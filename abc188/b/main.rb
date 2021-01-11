n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

res = a.zip(b).map{|aa,bb| aa * bb}.sum

puts res.zero? ? :Yes : :No
