h, w, x, y = gets.split.map(&:to_i) # n = 10, m = 20
sh = []
h.times { sh << gets.chomp.chars } # [[1, 2], [3, 4], [5, 6]]

if sh[x - 1][y - 1] == '#'
  puts 0
  exit
end

count = 1
[[-1, 0], [1, 0], [0, -1], [0, 1]].each do |dx, dy|
  xx = x - 1
  yy = y - 1
  loop do
    xx += dx
    yy += dy
    break if xx < 0 || h - 1 < xx || yy < 0 || w - 1 < yy || sh[xx][yy] == '#'

    count += 1
  end
end

puts count
