s = gets.chomp.to_s
k = gets.chomp.to_i

r = [1]
s.each_char.with_index do |v, i|
  next if i == 0
  if v == s[i-1]
    r[-1] += 1
  else
    r.push 1
  end
end

if r.length == 1
  puts r[0] * k / 2
  exit
end

ans = r.map{|e| e / 2}.reduce(:+)
ans *= k

ans += k-1 if s[0] == s[-1] && r[0].odd? && r[-1].odd?

puts ans
