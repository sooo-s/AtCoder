s = gets.chomp

def rle s
  s.each_char.inject([]) do |memo, c| 
     memo.last && c == memo.last.last ? memo.last[0] += 1 : memo << [1, c]
     memo
  end
end

ans = []
(rle s).each_slice(2) do |r, l|
  length = r[0] + l[0]
  r_num = r[0].odd? ? (length / 2.0).ceil : (length / 2.0).floor
  l_num = length - r_num
  res = Array.new(length, 0)
  res[r[0] - 1] = r_num
  res[-l[0]] = l_num
  ans << res
end

puts ans.flatten.join(' ')
