n = gets.chomp.to_i
s = gets.chomp.split("").map(&:to_s)

fin = []
s.each_with_index do |v, i|
  next if v == s[i+1] 
  fin.push s
end

puts fin.length
