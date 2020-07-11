n,k = gets.chomp.split.map &:to_i
s = []
n.times{|i| s << gets.to_i }

if s.include?(0)
  puts n
  exit
end

multi, max, right = 1, 0, 0
n.times do |left|
  while right < n && multi * s[right] <= k
    multi *= s[right]
    right += 1
  end
  max = [max, right - left].max
  if (left === right) then right += 1
  else multi /= s[left] 
  end
end

puts max
