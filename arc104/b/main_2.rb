n, s = gets.chomp.split.map(&:to_s) # n = 10, m = 20

# p n, s
N = n.to_i

a_sum = [0]
t_sum = [0]
c_sum = [0]
g_sum = [0]
s.chars.each do |v|
  case v
  when 'A'
    a_sum << a_sum[-1] + 1
    t_sum << t_sum[-1]
    c_sum << c_sum[-1]
    g_sum << g_sum[-1]
  when 'T'
    a_sum << a_sum[-1]
    t_sum << t_sum[-1] + 1
    c_sum << c_sum[-1]
    g_sum << g_sum[-1]
  when 'C'
    a_sum << a_sum[-1]
    t_sum << t_sum[-1]
    c_sum << c_sum[-1] + 1
    g_sum << g_sum[-1]
  when 'G'
    a_sum << a_sum[-1]
    t_sum << t_sum[-1]
    c_sum << c_sum[-1]
    g_sum << g_sum[-1] + 1
  end
end

count = 0
(0...N).each do |first|
  (first...N).each do |last|
    a = a_sum[last + 1] - a_sum[first]
    t = t_sum[last + 1] - t_sum[first]
    c = c_sum[last + 1] - c_sum[first]
    g = g_sum[last + 1] - g_sum[first]
    count += 1 if a == t && c == g
  end
end

puts count
