n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i).sort.reverse

if k >= n
  puts 0
  exit
end

h_remain = h[k..-1]

puts h_remain.reduce(:+)
