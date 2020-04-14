n = gets.chomp.to_i

puts (1..n).to_a.select{|v| v % 3 != 0 && v % 5 != 0}.sum
