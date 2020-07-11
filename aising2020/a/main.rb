l,r,d = gets.chomp.split.map &:to_i

ans = 0
l.upto(r) do |v|
  ans += 1 if v % d == 0
end

puts ans
