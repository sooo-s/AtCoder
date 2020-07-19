s = gets.chomp.chars

before = s[0]
count = 1
ans = ''
s.each_with_index do |ss,i|
  next if i == 0
  if before == ss
    count += 1
  else
    ans << before << count.to_s
    count = 1
    before = ss
  end
  if i == s.size - 1
    ans << before << count.to_s
  end
end

puts ans
