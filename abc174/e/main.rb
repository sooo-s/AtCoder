n,k = gets.chomp.split.map &:to_i
a = gets.chomp.split.map &:to_i

ans = (1..10**9).bsearch do |x|
  cut = a.map{|aa| (aa / x.to_f).ceil - 1 }.sum
  cut <= k
end

puts ans

