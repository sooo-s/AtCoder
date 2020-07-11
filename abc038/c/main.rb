n = gets.to_i
a = gets.chomp.split.map &:to_i

right, ans = 0, 0

n.times do |left|
  while right < n && (left == right || a[right-1] < a[right])
    right += 1
  end
  ans += right - left 
end

puts ans
