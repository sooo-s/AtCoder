s = gets.chomp.split('').map(&:to_s)
t = gets.chomp.split('').map(&:to_s)

puts [s,t].transpose.filter{|ss,tt| ss != tt}.count

