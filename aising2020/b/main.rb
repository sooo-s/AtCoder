n = gets.to_i
a = gets.chomp.split.map &:to_i

ans = 0
a.each_with_index do |v,i|
  ans += 1 if i.even? && v.odd?
end

puts ans
