n = gets.to_i

arr = []

(1..9).each do |a|
  (1..9).each do |b|
    arr.push a*b
  end
end

if arr.include?(n)
  puts 'Yes'
else
  puts 'No'
end
