n,k = gets.chomp.split.map &:to_i
a = gets.chomp.split.map &:to_i

div = 10**9 + 7
ten = 0
bits = Array.new(2001,0)

a.each_with_index do |aa, i|
  ten += i - bits[0..aa].sum
  ten %= div
  bits[aa] += 1
end

ten2 = 0
a.each_with_index do |aa,i|
  ten2 += a.count{|v| v<aa}
end
tenk = ten * k % div
ten2k = ten2 * k * (k-1) / 2 % div
ans = tenk + ten2k

puts ans % div
