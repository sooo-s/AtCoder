n = gets.to_i
a = gets.chomp.split.map(&:to_i)

pi = [0]
qi = [0]

a.each do |aa|
  pi << pi.last + aa
  qi << [qi.last, pi[-2]].max
end

ans = 0
now = 0
n.times do |i|
  ans = [ans, now + qi[i + 1]].max
  now += pi[i + 1]
  ans = [ans, now].max
end

puts ans
