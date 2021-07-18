N, M = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A = M.times.map { gets.to_i } # [[1, 2], [3, 4], [5, 6]]
MOD = 1_000_000_007 # 割った余り系

dp = [0] * (N + 1)
dp[0] = 1

A.each do |ana|
  dp[ana] = false
end

(1..N).each do |n|
  unless dp[n]
    dp[n] = 0
    next
  end

  if n == 1
    dp[n] = 1
    next
  end

  dp[n] = dp[n - 1] + dp[n - 2]
  dp[n] %= MOD
end

puts dp[N]
