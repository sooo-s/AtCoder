n = gets.to_i

arr = (1..n).filter do |i|
  !(i.to_s.include?('7') || i.to_s(8).include?('7'))
end

puts arr.size
