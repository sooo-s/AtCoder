N = gets.to_i # 10
A = gets.chomp.split.map(&:to_i) # n = 10, m = 20

max = A.max
A.map! { |aa| aa == max ? 0 : aa }
boo = A.max

puts A.find_index(boo) + 1
