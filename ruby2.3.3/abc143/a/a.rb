a,b = gets.chomp.split.map(&:to_i)

c = a - b*2

if c <= 0
  puts 0
else
  puts c
end
