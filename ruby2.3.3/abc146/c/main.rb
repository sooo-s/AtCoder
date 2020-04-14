a,b,x = gets.chomp.split.map(&:to_i)

def calc(a,b,n)
  a * n + b * (Math.log10(n).to_i + 1)
end

result = (1..10**9).bsearch do |n|
  x < calc(a,b,n)
end
if result
  p result - 1
else
  p 10**9
end
