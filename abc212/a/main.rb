A, B = gets.chomp.split.map(&:to_i) # n = 10, m = 20

if B == 0
  puts 'Gold'
elsif A == 0
  puts 'Silver'
else
  puts 'Alloy'
end
