n, m = gets.chomp.split.map(&:to_i)
ab = []
m.times do
  ab << gets.chomp.split.map(&:to_i)
end
k =  gets.to_i
cd = []
k.times do
  cd << gets.chomp.split.map(&:to_i)
end

ans = 0
[0,1].repeated_permutation(k) do |bits|
  selected = []
  cd.zip(bits) do |ckdk, bit|
      selected << ckdk[bit]
  end
  selected = selected.uniq.sort
  count = 0
  ab.each do |a,b|
    count += 1 if (selected.include?(a) && selected.include?(b))
  end
  ans = [ans, count].max
end

puts ans
