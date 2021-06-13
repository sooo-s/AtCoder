n = gets.to_i # 10
a = gets.split.map(&:to_i) # n = 10, m = 20
b = gets.split.map(&:to_i) # n = 10, m = 20
c = gets.split.map(&:to_i) # n = 10, m = 20

count = Array.new(n + 1, 0)
c.each do |cc|
  count[b[cc - 1]] += 1
end

ans = 0
a.each do |aa|
  ans += count[aa]
end

puts ans
