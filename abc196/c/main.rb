n = gets.to_i # 10

ans = 0

1.upto(10**6).each do |x|
  now = (x.to_s + x.to_s).to_i
  break if now > n

  ans += 1
end

puts ans
