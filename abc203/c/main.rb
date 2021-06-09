n, k = gets.chomp.split.map(&:to_i) # n = 10, m = 20

ab = []

n.times do
  ab << gets.split.map(&:to_i) # [[1, 2], [3, 4], [5, 6]]
end

ab.sort_by! { |v| [v[0]] }

ab.each do |mura, okane|
  break if k < mura

  k += okane
end

puts k
