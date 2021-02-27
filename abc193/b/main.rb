n = gets.to_i # 10
apx = []
n.times { apx << gets.split.map(&:to_i) }

apx.filter! do |a, _p, x|
  x > a
end

if apx.size.zero?
  puts '-1'
  exit
end

puts apx.map { |v| v[1] }.min
