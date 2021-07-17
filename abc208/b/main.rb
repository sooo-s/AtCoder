price = gets.to_i # 10

coin = (1..10).map { |i| Math.gamma(i + 1).to_i }

ans = 0
coin.reverse.each do |c|
  num, next_price = price.divmod(c)
  ans += num
  price = next_price
end

puts ans
