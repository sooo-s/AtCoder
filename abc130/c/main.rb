w, h, x, y = gets.chomp.split.map &:to_i

is_center = x * 2 == w && y * 2 == h

ans = w * h / 2.0

puts [ans, is_center ? 1 : 0].join(' ')
