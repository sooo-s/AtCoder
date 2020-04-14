n = gets.chomp.to_i
xy = []
0.upto(n-1) do |i|
  x, y = gets.chomp.split.map(&:to_i)
  xy[i] = [x,y]
end

def dis(a,b)
  x = (a[0] - b[0]) ** 2
  y = (a[1] - b[1]) ** 2
  return Math.sqrt(x+y)
end

dis_total =  xy.combination(2).to_a.map{|a,b| dis(a,b)}.reduce(&:+)

p dis_total * 2 / n
