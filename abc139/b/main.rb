a, b = gets.chomp.split.map(&:to_i) # n = 10, m = 20

soc = 1
tap = 0
loop do
  break if soc >= b

  soc += a - 1
  tap += 1
end

puts tap
