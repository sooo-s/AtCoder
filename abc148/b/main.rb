n = gets.chomp.to_i
s,t = gets.chomp.split.map(&:to_s)

n.times do |i|
  print s[i],t[i]
end
