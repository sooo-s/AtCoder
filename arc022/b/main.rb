n = gets.to_i
a = gets.chomp.split.map &:to_i
max, right = 0, 0
require 'set'
s = Set.new

n.times do |left|
  while right < n && !s.include?(a[right])
    s << a[right]
    right += 1
  end
  max = [max, right - left].max
  if left == right
    right += 1
  else
    s.delete(a[left])
  end
end
puts max
