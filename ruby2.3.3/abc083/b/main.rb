n,a,b = gets.chomp.split.map(&:to_i)

arr = []
1.upto(n) do |i|
  con = i.to_s.split("").map(&:to_i).reduce(:+) 
  arr.push i if a <= con && con <= b
end

puts arr.reduce(:+)
