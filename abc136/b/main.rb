n = gets.to_i

ans = 0
1.upto(n) do |i|
  ans += 1 if i.to_s.size.odd?
end

puts ans
