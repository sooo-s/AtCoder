n = gets.to_i
a = gets.chomp.split.map(&:to_i)
a.unshift(0)
b = Array.new(n+1,0)
n.downto(1).each do |i|
  index_of_baisu = [i]
  nextnum = i
  loop do
    nextnum = nextnum + i
    break if nextnum > n
    index_of_baisu << nextnum
  end
  count = 0
  index_of_baisu.each do |j|
    count += b[j]
  end
  b[i] = 1 if count % 2 != a[i]
end

puts b.sum
if b.sum.nonzero?
  res = b.map.with_index do |v,i|
    v == 1 ? i : nil
  end
  puts res.compact.join(' ')
end
