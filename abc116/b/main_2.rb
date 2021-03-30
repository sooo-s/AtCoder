s = gets.to_i # 10

ans = 1
arr = [s]
loop do
  ans += 1
  ss = arr.last
  s_next = if ss.even?
             ss / 2
           else
             3 * ss + 1
           end
  break if arr.include?(s_next)

  arr << s_next
end

puts ans
