n = gets.to_i
$xy = []
n.times { $xy << gets.split.map(&:to_i) }

def k(i,j)
  first = $xy[i]
  second = $xy[j]
  return (second[1] - first[1]) / (second[0] - first[0]).to_f
end

counter = 0
(0..n-1).each do |i|
  (i..n-1).each do |j|
    next if i == j
    counter += 1 if -1 <= k(i,j) && k(i,j) <= 1
  end
end

p counter
