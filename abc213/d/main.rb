N = gets.to_i # 10
$ab = Array.new(N + 1) { [] }
(N - 1).times do
  a, b = gets.split.map(&:to_i)
  $ab[a] << b
  $ab[b] << a
end

$ab.map!(&:sort)
$visited = Array.new(N + 1)
$ans = []

def dfs(visit)
  $visited[visit] = true
  $ans << visit
  $ab[visit].each do |to|
    next if $visited[to]

    dfs(to)
    $ans << visit
  end
end

dfs(1)
puts $ans.join(' ')
