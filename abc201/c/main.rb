$s = gets.chomp.chars # ["s", "t", "r", "i", "n", "g"]

def ok?(num_s)
  $s.each_with_index do |ss, i|
    return false if ss == 'x' && num_s.include?(i.to_s)
    return false if ss == 'o' && !num_s.include?(i.to_s)
  end
  true
end

ans = 0
'0000'.upto('9999') do |n|
  next unless ok?(n)

  ans += 1
end

puts ans
