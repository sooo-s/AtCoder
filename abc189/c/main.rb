n = gets.to_i
an = gets.chomp.split.map(&:to_i)

max = 0

n.times do |l|
  x = an[l]
  (n-l).times do |r|
    x = an[l+r] if an[l+r] < x
    break if max >= x * (n-l)
    sum = x * (r + 1) 
    max = sum if max < sum
  end
end

puts max
