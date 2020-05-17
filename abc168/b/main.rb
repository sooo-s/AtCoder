k = gets.to_i
s = gets.chomp.chars

if s.size <= k
  puts s.join('')
else
  puts s[0..k-1].join('') + '...'
end
