H, W = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A = H.times.map { gets.chomp.chars.map { |v| v == '.' } }

dp = H.times.map { [0] * W }
divmod = 10.pow(9) + 7

dp[0][0] = 1

(0...H).each do |h|
  (0...W).each do |w|
    masu = A[h][w]
    if masu
      dp[h][w] += dp[h - 1][w] if 0 < h
      dp[h][w] += dp[h][w - 1] if 0 < w
      dp[h][w] %= divmod
    else
      dp[h][w] = 0
    end
  end
end

puts dp[H - 1][W - 1]
