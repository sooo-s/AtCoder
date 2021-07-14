n = gets.to_i # 10

t = []
n.times do
  tt, l, r = gets.split.map(&:to_i)
  range = case tt
          when 1 then (l..r)
          when 2 then (l..r - 0.5)
          when 3 then (l + 0.5..r)
          else (l + 0.5..r - 0.5)
          end
  t << range
end

ans = 0
(0...n).to_a.combination(2).each do |i, j|
  ans += 1 if [t[i].first, t[j].first].max <= [t[i].last, t[j].last].min
end
p ans
