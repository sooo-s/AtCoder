x, k, d = gets.chomp.split.map(&:to_i) # n = 10, m = 20

x = x.abs
q, r = x.divmod(d)

ans = 0
if q >= k
  ans = x - d * k
else
  rem = k - q
  ans = rem.even? ? r : d - r
end

puts ans
