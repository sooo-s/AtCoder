S, T = gets.chomp.split.map(&:to_i) # n = 10, m = 20

ans = 0
(0..S).each do |a|
  (0..S - a).each do |b|
    (0..S - a - b).each do |c|
      ans += 1 if a * b * c <= T
    end
  end
end

puts ans
