a,b,x = gets.chomp.split.map &:to_i

a_div = (a - 1) / x
b_div = b / x

puts b_div - a_div
