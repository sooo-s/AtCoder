n = gets.chomp.chars
i = n.last.to_i

puts  'hon' if [2,4,5,7,9].include? i
puts  'pon' if [0,1,6,8].include? i
puts  'bon' if i == 3
