n = gets.to_i
s,t = gets.chomp.split(' ').map &:chars

ans = ''
s.each_with_index do |ss,i|
  ans += ss
  ans += t[i]
end
puts ans
