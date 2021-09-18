N = gets.to_i # 10
S = gets.chomp.split.map(&:to_i) # n = 10, m = 20
T = gets.chomp.split.map(&:to_i) # n = 10, m = 20

t_first = T.find_index(T.min)

s = [S[t_first..], S[...t_first]].flatten
t = [T[t_first..], T[...t_first]].flatten

dp = Array.new(N) { 0 }

dp[0] = t[0]
(1...N).each do |n|
  dp[n] = [t[n], dp[n - 1] + s[n - 1]].min
end

[dp[-t_first..], dp[...-t_first]].flatten.map { |x| puts x }
