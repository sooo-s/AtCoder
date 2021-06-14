s = gets.chomp.chars # ["s", "t", "r", "i", "n", "g"]

puts s.last == 's' ? s.join + 'es' : s.join + 's'
