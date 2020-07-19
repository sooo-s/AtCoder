x = gets.to_i

div,mod = x.divmod(11)
ans = div * 2
ans += mod <= 6 ? 1 : 2 if !mod.zero?

puts ans
