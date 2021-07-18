N = gets.to_i
P = gets.chomp.split.map(&:to_f) # n = 10, m = 20

dp = (N + 1).times.map { [0] * (N + 1) }
dp[0][0] = 1

(1..N).each do |coin_n|
  (0..N).each do |front_num|
    omote_p = P[coin_n - 1]
    dpn = dp[coin_n]
    dpnm = dp[coin_n - 1]

    dpn[front_num] = dpnm[front_num] * (1 - omote_p)
    dpn[front_num] += dpnm[front_num - 1] * omote_p unless front_num.zero?
  end
end

puts dp[N][(N + 1) / 2..].sum
