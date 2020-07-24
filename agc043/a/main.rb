h,w = gets.chomp.split.map &:to_i
s = []
dp = []
h.times{ s << gets.chomp.chars && dp << Array.new(w,0) }

def is_w2b(from, to)
  from === '.' && to === '#'
end

def is_w(s)
  s === '.'
end

dp[0][0] = is_w(s[0][0])  ? 0 : 1

(h-1).times do |i|
  dp[i+1][0] = is_w2b(s[i][0], s[i+1][0]) ? dp[i][0] + 1 : dp[i][0]
end
(w-1).times do |j|
  dp[0][j+1] = is_w2b(s[0][j], s[0][j+1]) ? dp[0][j] + 1 : dp[0][j]
end

(1...h).each do |i|
  (1...w).each do |j|
    dp[i][j] = [
      is_w2b(s[i-1][j], s[i][j]) ? dp[i-1][j] + 1 : dp[i-1][j],
      is_w2b(s[i][j-1], s[i][j]) ? dp[i][j-1] + 1 : dp[i][j-1]
    ].min
  end
end

p dp.last.last
