N = gets.to_i # 10
T = gets.chomp.split.map(&:to_i) # n = 10, m = 20

S = T.sum
max = (S + 1) / 2

dp = (N + 1).times.map { [false] * (S + 1) }

dp[0][0] = true
(1..N).each do |n|
  (0..S).each do |time|
    if dp[n - 1][time]
      dp[n][time] = true
      dp[n][time + T[n - 1]] = true
    end
  end
end

puts dp[N][max..].find_index(true) + max
