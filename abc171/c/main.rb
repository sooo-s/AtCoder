n = gets.to_i # 10

ans = []

a_ord = 'a'.ord

while n > 0
  n -= 1
  div, mod = n.divmod(26)
  ans << (a_ord + mod).chr
  n = div
end

puts ans.reverse.join
