N = gets.to_i # 10

dp = [0] * (N + 1)
dp[0] = 0

pow = [1]
roku = 6
while roku <= N
  pow << roku
  roku *= 6
end
kyu = 9
while kyu <= N
  pow << kyu
  kyu *= 9
end
pow.sort!

(1..N).each do |n|
  tmp = pow.filter { |v| 0 <= (n - v) }.map { |v| dp[n - v] }
  dp[n] = tmp.min + 1
end

puts dp[N]
