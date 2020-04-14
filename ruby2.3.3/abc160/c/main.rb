k,n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a_diff = [] 

a.each_with_index do |an, i|
  if i + 1 == a.length
    a_diff.push a[0] + k - a[i]
  else
    a_diff.push a[i+1] - a[i] 
  end
end

puts k - a_diff.max
