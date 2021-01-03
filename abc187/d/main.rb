n = gets.to_i
ab = []
aoki = 0
taka = 0
counter = 0
n.times do |i|
  v = gets.split.map(&:to_i)
  ab << [v, v.sum + v[0]].flatten
  aoki += v[0]
end

ab.sort_by!{ |a| [a[2]] }.reverse!

ab.each do |a,b,s|
  counter += 1
  aoki -= a
  taka += a + b
  break if taka > aoki
end

p counter
