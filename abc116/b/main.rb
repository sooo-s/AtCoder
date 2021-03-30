s = gets.to_i # 10

require 'set'
ans = 1
set = [s].to_set
s_now = s

loop do
  ans += 1
  s_next = if s_now.even?
             s_now / 2
           else
             3 * s_now + 1
           end
  break if set.include?(s_next)

  set << s_next
  s_now = s_next
end

puts ans
