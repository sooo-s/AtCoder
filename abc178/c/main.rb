n = gets.to_i # 10

mod = 10**9 + 7
ans = 10.pow(n, mod) - 2 * 9.pow(n, mod) + 8.pow(n, mod)
puts (ans + mod) % mod
