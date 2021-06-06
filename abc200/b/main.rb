n, k = gets.split.map(&:to_i) # n = 10, m = 20

k.times do
  if n % 200 == 0
    n /= 200
  else
    n = (n.to_s + '200').to_i
  end
end

puts n
