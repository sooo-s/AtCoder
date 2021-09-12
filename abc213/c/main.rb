H, W, N = gets.chomp.split.map(&:to_i) # n = 10, m = 20
A = []
B = []
N.times do
  a, b = gets.split.map(&:to_i)
  A << a
  B << b
end
a_sort = A.sort.uniq
b_sort = B.sort.uniq

(0...N).each do |i|
  a = a_sort.bsearch_index { |x| x >= A[i] }
  b = b_sort.bsearch_index { |x| x >= B[i] }
  puts "#{a + 1} #{b + 1}"
end
