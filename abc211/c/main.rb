S = gets.chomp.chars # ["s", "t", "r", "i", "n", "g"]

cho = %w[c h o k u d a i]
s_size = S.size
MOD = 1_000_000_007 # divide by a prime number

dp = (s_size + 1).times.map { ([1] << [0] * 8).flatten }

(1..s_size).each do |i|
  (1..8).each do |j|
    dpim = dp[i - 1]
    ok = (S[i - 1] == cho[j - 1])
    dp[i][j] = ok ? dpim[j] + dpim[j - 1] : dpim[j]
    dp[i][j] %= MOD
  end
end

puts dp[s_size][8]
