k = gets.to_i

a = 0
(1..k).each do |n|
  a = (10 * a + 7) % k
  if a % k == 0
    puts n
    exit
  end
end

puts(-1)
