x, y, a, b = gets.split.map(&:to_i) # n = 10, m = 20

ans = 0
while x * a < x + b && x * a < y
  x *= a
  ans += 1
end

puts ans + ((y - x - 1) / b)
