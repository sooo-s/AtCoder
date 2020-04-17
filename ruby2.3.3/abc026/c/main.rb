n = gets.to_i
$soshiki = Array.new(n){ [] }

(n-1).times do |i|
  boss = gets.to_i
  $soshiki[boss - 1].push i+1
end

def dfs(buka)
  chokuzoku = $soshiki[buka]
  return 1 if chokuzoku.length == 0
  return dfs(chokuzoku[0]) * 2 + 1 if chokuzoku.length == 1

  buka_kyuyo = chokuzoku.map{|c| dfs(c)}
  return buka_kyuyo.max + buka_kyuyo.min + 1
end

puts dfs(0)
