n = gets.to_i # 10
d = []
n.times { d << gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

count = 0
d.each do |a, b|
  count = a == b ? count + 1 : 0
  if count == 3
    puts 'Yes'
    exit
  end
end

puts 'No'
