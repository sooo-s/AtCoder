n = gets.to_i # 10

def divisors(m)
  res = []
  (1..Math.sqrt(m)).each do |x|
    res << x << m / x if m % x == 0
  end
  res.sort.uniq
end

puts divisors(n).join("\n")
