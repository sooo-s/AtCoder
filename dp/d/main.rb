N, W = gets.chomp.split.map(&:to_i) # n = 10, m = 20
W_N = N.times.map { gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

dp = (N + 1).times.map { [0] * (10**5 + 10) }

(1..N).each do |n|
  (1...(10**5 + 10)).each do |w|
    prev_v = dp[n - 1][w]
    now_w, now_v = W_N[n - 1]
    selectable = w < now_w
    dp[n][w] = if selectable
                 prev_v
               else
                 [dp[n - 1][w - now_w] + now_v, prev_v].max
               end
  end
end

puts dp[N][W]
