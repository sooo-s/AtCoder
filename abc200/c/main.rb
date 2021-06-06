n = gets.to_i # 10
a = gets.split.map(&:to_i) # n = 10, m = 20

tally = a.map { |aa| aa % 200 }.tally

ans = 0
tally.to_a.each do |_, same|
  ans += same * (same - 1) / 2
end

puts ans
