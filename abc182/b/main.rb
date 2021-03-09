n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
max_size = 0

(2..a.max).each do |gcd|
  tmp = a.filter { |aa| (aa % gcd).zero? }.size
  if max_size < tmp
    max_size = tmp
    ans = gcd
  end
end

puts ans
