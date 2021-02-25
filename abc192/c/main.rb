n, k = gets.chop.split.map(&:to_i)

def g1(x)
  x.to_s.split('').sort.reverse.join.to_i
end

def g2(x)
  x.to_s.split('').sort.join.to_i
end

def f(x)
  g1(x) - g2(x)
end

a = n
k.times do
  tmp = a
  a = f(tmp)
  break if a == tmp
end

puts a
