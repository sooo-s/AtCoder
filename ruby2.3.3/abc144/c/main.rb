n = gets.chomp.to_i

a = Math.sqrt(n).to_i

arr = []
1.upto(a).each do |v|
  r = n % v
  next if r.nonzero?
  b = n / v
  arr.push [v,b]
end

puts arr.map{|v| v[0] + v[1] - 2}.min
