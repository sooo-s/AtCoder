N, W = gets.chomp.split.map(&:to_i) # n = 10, m = 20
W_N = N.times.map { gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

max_v = 10**3 * 100 + 1
max_w = 10.pow(9) * 100
dp = (N + 1).times.map { [max_w] * max_v }
dp[0][0] = 0

(0..N).each do |n|
  (0...max_v).each do |v|
    if v.zero?
      dp[n][v] = 0
      next
    end

    prev_w = dp[n - 1][v]
    now_w, now_v = W_N[n - 1]

    not_selectable = v < now_v
    dp[n][v] = if not_selectable
                 prev_w
               else
                 [prev_w, dp[n - 1][v - now_v] + now_w].min
               end
  end
end

puts dp[N].map { |v| v <= W ? 1 : 0 }.rindex(1)
