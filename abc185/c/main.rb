l = gets.to_i

ans = 1

1.upto(11) do |x|
  ans = ans * (l - x) / x
end

puts ans
