n, s, d = gets.chomp.split.map(&:to_i)
xy = []

n.times do
  x, y = gets.chomp.split.map(&:to_i)
  if (x >= s || y <= d)
    next
  end
  puts 'Yes'
  exit
end

puts 'No'
