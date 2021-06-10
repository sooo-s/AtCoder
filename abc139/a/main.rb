s = gets.chomp.chars #  "string"
t = gets.chomp.chars #  "string"

puts s.zip(t).filter { |ss, tt| ss == tt }.size
