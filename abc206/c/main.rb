n = gets.to_i # 10
a = gets.chomp.split.map(&:to_i) # n = 10, m = 20

count = Hash.new(0)
same = 0
a.reverse.each do |aa|
  same += count[aa]
  count[aa] += 1
end

puts n * (n - 1) / 2 - same
