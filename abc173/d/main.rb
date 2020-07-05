n = gets.to_i
a = gets.chomp.split.map &:to_i
a.sort!.reverse!

ans = a[0]
count = 1

a[1..-1].each_with_index do |v|
  break if count >= n - 1 
  ans += v
  count += 1
  break if count >= n - 1
  ans += v
  count += 1
end

p ans
