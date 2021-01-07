n,m = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i).sort

if n >= m
  puts 0
  exit
end
puts x.each_cons(2).map{|v| v[1] - v[0]}.sort.reverse[n-1..-1].sum

