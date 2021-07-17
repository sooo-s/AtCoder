n, k = gets.chomp.split.map(&:to_i) # n = 10, m = 20
c = gets.chomp.split.map(&:to_i) # n = 10, m = 20

max = 0
size = 0
count = Hash.new(0)
(0..n - 1).each do |i|
  current = c[i]
  count[current] += 1
  size += 1 if count[current] == 1
  max = size if i == k - 1
  # p 'i', i, 'count', count, 'max', max, 'size', size, '---'
  next if i < k

  bye = c[i - k]
  count[bye] -= 1
  size -= 1 if count[bye] == 0
  max = size if max < size
  # p 'i', i, 'i-k', i - k, 'bye', bye, 'count', count, 'max', max, 'size', size, '---'
end

puts max
