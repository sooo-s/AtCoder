h,w = gets.chomp.split.map &:to_i
c = []
a = []
10.times{ c << gets.chomp.split.map(&:to_i) }
h.times{ a << gets.chomp.split.map(&:to_i) }

def warshall_floyd(n, edge)
  n.times do |k|
    n.times do |i|
      n.times do |j|
        edge[i][j] = [edge[i][j], edge[i][k] + edge[k][j]].min
      end
    end
  end
end

warshal_floyd(10, c)

need_change = a.flatten.select{|v| v != 1 && v != -1}
if need_change.empty?
  p 0
else
  p need_change.map{|v| c[v][1]}.inject(:+)
end
