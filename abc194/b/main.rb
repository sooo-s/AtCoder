n = gets.to_i # 10
a = []
b = []
ab = []
n.times do
  aa, bb = gets.split.map(&:to_i)
  a << aa
  b << bb
  ab << [aa, bb]
end

min = 10**6
(0..n - 1).to_a.repeated_permutation(2) do |aa, bb|
  a_job = a[aa]
  b_job = b[bb]
  tmp = if aa == bb
          a_job + b_job
        else
          a_job >= b_job ? a_job : b_job
        end
  min = min <= tmp ? min : tmp
end

puts min
