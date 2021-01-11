n,C = gets.chomp.split.map(&:to_i)
event = []
n.times do |nn|
  a,b,c = gets.chomp.split.map(&:to_i)
  a -= 1 # 1日目の前
  event << [a,c] << [b,-c] 
end

eg = event.sort.group_by{|v| v[0] }

ans = 0
fee = 0
t = 0

eg.each do |k,v|
  if k != t
    ans += [C, fee].min * (k - t)
    t = k
  end
  fee += v.map{|va| va[1]}.sum
end

puts ans
