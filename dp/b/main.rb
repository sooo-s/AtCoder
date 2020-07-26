n,k = gets.chomp.split.map(&:to_i)
h = [0] + gets.chomp.split.map(&:to_i)

dp = Array.new(n+1, 10**10)
dp[1] = 0

1.upto(n - 1) do |ashiba|
    ashiba_now = h[ashiba]
  1.upto(k) do |jump|
    ashiba_index = ashiba + jump
    next if ashiba_index > n
    ashiba_new = h[ashiba_index]
    jump_cost = ashiba_now < ashiba_new ? ashiba_new - ashiba_now : ashiba_now - ashiba_new
    tmp_cost = dp[ashiba] + jump_cost
    dp[ashiba_index] = tmp_cost if dp[ashiba_index] > tmp_cost
  end
end

p dp.last
