$k = gets.to_i # 10
s = gets.chomp.chars[0..-2].map { |v| v.to_i }
t = gets.chomp.chars[0..-2].map { |v| v.to_i }

$all = [s, t].flatten

def point(cards)
  pp = 0
  tally = cards.tally
  (1..9).each do |k|
    c = tally[k] || 0
    pp += k * 10**c
  end
  pp
end

def kakuritsu(s_num, t_num)
  tally = $all.tally
  tally.default = 0
  selected_s = tally[s_num]
  return 0 if selected_s == $k

  s_num_nokori = $k - selected_s
  tally[s_num] += 1

  selected_t = tally[t_num]
  return 0 if selected_t == $k

  t_num_nokori = $k - selected_t
  tally[t_num] += 1

  s_num_nokori / (9 * $k - 8).to_f * t_num_nokori / (9 * $k - 9).to_f
end

s_points = []
t_points = []

(1..9).each do |num|
  s_points.push point([s, num].flatten)
  t_points.push point([t, num].flatten)
end

ans = []
s_points.each_with_index do |sp, i|
  t_points.each_with_index do |tp, j|
    ans.push [i + 1, j + 1] if sp > tp
  end
end

kotae = ans.map do |i, j|
  kakuritsu(i, j)
end.sum

puts kotae
