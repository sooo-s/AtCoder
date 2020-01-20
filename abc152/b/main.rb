a,b = gets.chomp.split.map(&:to_i)

a_str = a.to_s * b
b_str = b.to_s * a

if a_str > b_str
  puts b_str
else
  puts a_str
end

