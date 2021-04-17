s = gets.chomp.to_s #  "string"
t = gets.chomp.to_s #  "string"

ans = s.chars.each_cons(t.size).map do |ss|
  t.chars.zip(ss).count do |ttt, sss|
    ttt != sss
  end
end

puts ans.min
