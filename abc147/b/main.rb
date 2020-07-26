s = gets.chomp.to_s

l = s.size

if l == 1
  p 0
else

  if l.even?
    s_front = s[0..l/2-1]
    s_back = s[l/2..l].reverse
  else
    s_front = s[0..l/2-1]
    s_back = s[l/2+1..l].reverse
  end

  count = 0
  s_front.split("").each.with_index do |v,i|
    count += 1 if s_front[i] != s_back[i]
  end
  p count
end
