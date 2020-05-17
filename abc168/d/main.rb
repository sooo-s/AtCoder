n,m = gets.split.map &:to_i
$node = Array.new(n){ [] }
m.times do
  a,b = gets.split.map(&:to_i)
  $node[a-1] << b - 1
  $node[b-1] << a - 1
end

link = Array.new(n){ nil }

def bfs(link)
  q = [0]
  while !q.empty?
    visit = q.shift
    $node[visit].each do |next_node|
      next unless link[next_node].nil?
      link[next_node] = visit
      q.push next_node 
    end
  end
end

bfs(link)
link.shift

if link.any? &:nil?
  puts 'No'
else
  puts 'Yes'
  link.each do |v|
    puts v + 1
  end
end


