n = gets.to_i # 10
s = gets.chomp.chars # 10
q = gets.to_i # 10
tab = []
q.times { tab << gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

# p n, s, q, tab
flip = false
tab.each do |t, a, b|
  if t == 1
    a_index = if !flip
                a - 1
              else
                a < n ? a - 1 + n : a - 1 - n
              end
    b_index = if !flip
                b - 1
              else
                b < n ? b - 1 + n : b - 1 - n
              end
    tmp = s[a_index]
    s[a_index] = s[b_index]
    s[b_index] = tmp
  else
    flip = !flip
  end
end

s = flip ? s[n..] + s[...n] : s

puts s.join
