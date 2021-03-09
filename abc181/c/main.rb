n = gets.to_i # 10
xy = []
n.times { xy << gets.split.map(&:to_i) }

xy.combination(3).each do |a, b, c|
  d1 = [a[0] - b[0], a[1] - b[1]]
  d2 = [b[0] - c[0], b[1] - c[1]]
  if d1[0] * d2[1] == d2[0] * d1[1]
    puts 'Yes'
    exit
  end
end

puts 'No'
