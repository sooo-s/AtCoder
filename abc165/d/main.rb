a,b,n = gets.chomp.split.map &:to_i

x = [b-1,n].min

puts (a * x / b.to_f).floor - a * (x / b.to_f).floor
