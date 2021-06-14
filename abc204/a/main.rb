x, y = gets.chomp.split.map(&:to_i) # n = 10, m = 20

if x == y
  puts x
else
  puts [0, 1, 2].filter { |v| v != x && v != y }.first
end
