sx, sy, gx, gy = gets.split.map(&:to_i)

migini_iku = ((gx - sx) / (gy + sy).to_f).rationalize

puts (sy * migini_iku + sx).to_f
