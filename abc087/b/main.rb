a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

ans = 0
0.upto(a) do |ai|
  0.upto(b) do |bi|
    0.upto(c) do |ci|
      ans += 1 if 500*ai + 100*bi + 50*ci == x
    end
  end
end

puts ans
