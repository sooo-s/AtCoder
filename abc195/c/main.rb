n = gets.to_i

ans = 0
if n >= 10**15
  ans += 5 * (n - 10**15 + 1)
  n = 10**15 - 1
end
if n >= 10**12
  ans += 4 * (n - 10**12 + 1)
  n = 10**12 - 1
end
if n >= 10**9
  ans += 3 * (n - 10**9 + 1)
  n = 10**9 - 1
end
if n >= 10**6
  ans += 2 * (n - 10**6 + 1)
  n = 10**6 - 1
end
ans += 1 * (n - 10**3 + 1) if n >= 10**3

puts ans
