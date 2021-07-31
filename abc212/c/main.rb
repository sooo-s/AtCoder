N, M = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A = gets.chomp.split.map(&:to_i) # n = 10, m = 20
B = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A.sort!
B.sort!

min = Float::INFINITY

i = 0
j = 0

while i < N && j < M
  a = A[i]
  b = B[j]
  min = [min, (a - b).abs].min
  if a > b
    j += 1
  else
    i += 1
  end
end

puts min
