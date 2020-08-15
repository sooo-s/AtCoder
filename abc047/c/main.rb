s = gets.chomp.chars

ans = 0
memo = ''
s.each_with_index do |ss,i|
  if i == 0
    memo = ss
    next
  end
  ans += 1 if memo != ss
  memo = ss
end

p ans
