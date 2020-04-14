n,x,y = gets.chomp.split.map(&:to_i)

p n,x,y

diff = []

def calc_diff(start, last, x, y)
  return last - start if x <= start && last <= y
  return x - start + 1 + last - y if start <= x && y <= last
  return x - start + [last - x, y - last + 1].min if start <= x && last <= y
  return [start - x + 1, y - start].min + last - y if x <= start && y <= last
end


0.upto(n - 1) do |i|
  tmp = []
  i.upto(n-1) do |j|
    tmp.push calc_diff()
  end
  diff.push [i]
end

p diff
