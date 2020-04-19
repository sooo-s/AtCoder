n,m = gets.chomp.split.map &:to_i
a_m = gets.chomp.split.map &:to_i

puts  a_m.sum <= n ? n - a_m.sum : -1
