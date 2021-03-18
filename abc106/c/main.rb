s = gets.chomp.split('').map(&:to_i) # n = 10, m = 20
k = gets.to_i # 10

s.each.with_index(1) do |ss, i|
  next if ss == 1

  puts k < i ? 1 : ss
  exit
end

puts 1
