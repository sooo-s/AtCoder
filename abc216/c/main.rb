n = gets.to_i # 10

ans = []
until n.zero?
  if n.odd?
    n -= 1
    ans << 'A'
  else
    n /= 2
    ans << 'B'
  end
end

puts ans.reverse.join
