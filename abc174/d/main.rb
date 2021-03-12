n = gets.to_i
c = gets.chomp.chars

if c.all?('R') || c.all?('W')
  puts 0
  exit
end

r_num = c.count('R')

puts c[..r_num - 1].count('W')
