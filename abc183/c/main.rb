n, k = gets.split.map(&:to_i)
$t = []
n.times { $t << gets.split.map(&:to_i) }

def calc(jun)
  ans = 0
  [1, jun, 1].flatten.each_cons(2) do |a, b|
    ans += $t[a - 1][b - 1]
  end
  ans
end

puts (2..n).to_a.permutation.map { |jun| calc(jun) }.filter { |v| v == k }.size
