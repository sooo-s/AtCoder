n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.unshift(10**10)
xy = []
m.times do
  xy << gets.chomp.split.map(&:to_i)
end

to_from = xy.sort.group_by{|v| v[0]}.each{|_,v| v.map!{|vv| vv[1]}}

dp = Array.new(n+1, 10**10)

(1..n).each do |i|
  (to_from[i] || []).each do |j|
    dp[j] = [dp[j], dp[i], a[i]].min
  end
end

puts a.drop(1).zip(dp.drop(1)).map{ |aa,dd| aa - dd }.max
