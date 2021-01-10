n = gets.to_i
s = []
n.times{ s << gets.chomp.to_s }
m = gets.to_i
t = []
m.times{ t << gets.chomp.to_s }
s_count, t_count = [s.tally, t.tally]

s_count.each do |k,v|
  s_count[k] -= t_count[k] || 0
end

first = s_count.sort_by{|_,v| -v}.first[1]

p first.negative? ? 0 : first
