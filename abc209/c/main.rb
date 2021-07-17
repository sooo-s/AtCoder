N = gets.to_i # 10
C = gets.chomp.split.map(&:to_i) # n = 10, m = 20

divmod = 10.pow(9) + 7
ans = 1
C.sort.each_with_index do |c, i|
  ans *= c - i
  ans %= divmod
end

puts ans
