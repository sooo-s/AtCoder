n = gets.to_i # 10

ans = 0
(n - 1).downto(1).each do |nn|
  ans += n / nn.to_f
end

puts ans
