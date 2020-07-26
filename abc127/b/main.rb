r,d,x = gets.chomp.split.map &:to_i

(1..10).each do
  x = r * x - d
  puts x
end
