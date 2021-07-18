N, A = gets.chomp.split.map(&:to_i) # n = 10, m = 20
X = gets.chomp.split.map(&:to_i) # n = 10, m = 20

dp = (N + 1).times.map { 3000.times.map { [0] * (N + 1) } }
dp[0][0][0] = 1

(0...N).each do |i|
  (0...3000).each do |s|
    (0...N).each do |k|
      now = dp[i][s][k]
      next if now.zero?

      dp[i + 1][s][k] += now
      dp[i + 1][s + X[i]][k + 1] += now
    end
  end
end

ans = 0
(1..N).each do |n|
  ans += dp[N][A * n][n]
end
puts ans
