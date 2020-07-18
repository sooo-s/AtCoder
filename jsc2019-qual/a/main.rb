m,d = gets.chomp.split.map &:to_i

ans = 0
(1..m).each do |month|
  (1..d).each do |day|
    d1 = day % 10
    next if d1 <= 1
    d10 = day / 10
    next if d10 <= 1
    mul = d1 * d10
    next if mul != month
    ans += 1
  end
end

puts ans
