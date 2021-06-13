s = gets.chomp.split('').map(&:to_i) # n = 10, m = 20

ans = s.reverse.map do |ss|
  case ss
  when 6
    9
  when 9
    6
  else
    ss
  end
end

puts ans.join
