a, b = gets.split.map(&:to_i) # n = 10, m = 20

kokei =  a + b
if kokei >= 15 && b >= 8
  puts 1
  exit
elsif kokei >= 10 && b >= 3
  puts 2
  exit
elsif kokei >= 3
  puts 3
  exit
end

puts 4
