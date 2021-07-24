N, M = gets.chomp.split.map(&:to_i) # n = 10, m = 20
AB = M.times.map { gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

g = Array.new(N + 1) { [] }
AB.each do |a, b|
  g[a] << b
end

ans = 0
1.upto(N) do |start|
  visited = Array.new(N + 1)
  queue = [start]
  visited[start] = true

  until queue.empty?
    v = queue.shift
    g[v].each do |to|
      unless visited[to]
        queue.push to
        visited[to] = true
      end
    end
  end
  ans += visited.count(true)
end

puts ans
