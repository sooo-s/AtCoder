n = gets.to_i # 10
ab = []
n.times { ab << gets.split.map(&:to_i) } # [1, 2, 3]

sum = 0
ab.each do |a, b|
  sum += (b + a) * (b - a + 1) / 2
end

puts sum
