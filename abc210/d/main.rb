H, W, C = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A = H.times.map { gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

def solve
  dp = H.times.map { [nil] * W }
  dp[0][0] = 1 << 60
  dp[1][0] = A[0][0] + A[1][0] + C
  dp[0][1] = A[0][0] + A[0][1] + C

  (1...W).each do |x|
    dp[0][x] = [A[0][x - 1] + C + A[0][x],
                dp[0][x - 1] + C + A[0][x] - A[0][x - 1]].min
  end
  (1...H).each do |y|
    dp[y][0] = [A[y - 1][0] + C + A[y][0],
                dp[y - 1][0] + C + A[y][0] - A[y - 1][0]].min
  end
  (1...H).each do |y|
    (1...W).each do |x|
      now = A[y][x]
      dp[y][x] = [
        A[y - 1][x] + C + now,
        A[y][x - 1] + C + now,
        dp[y - 1][x] + C + now - A[y - 1][x],
        dp[y][x - 1] + C + now - A[y][x - 1]
      ].min
    end
  end

  dp.flatten.min
end

a = solve
A.reverse!
b = solve
puts [a, b].min
