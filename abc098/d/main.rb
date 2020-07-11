n = gets.to_i
a = gets.chomp.split.map &:to_i

right = 0
sum = 0
ans = 0
a.each_with_index do |aa,left|
  while right < n && (sum + a[right]) == (sum ^ a[right])
    sum += a[right]
    right += 1
  end
  ans += right - left
  if left == right
    right += 1
  else
    sum -= a[left]
  end
end

puts ans
