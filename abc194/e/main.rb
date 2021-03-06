$n, m = gets.split.map(&:to_i) # n = 10, m = 20
a = gets.split.map(&:to_i) # n = 10, m = 20

def mex(arr)
  0.upto($n) do |nn|
    if arr.any? nn
      next
    else
      return nn
    end
  end
  $n
end

mex_a = []
a.each_cons(m) do |aa|
  mex_a << mex(aa)
end

puts mex_a.min
