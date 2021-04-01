n = gets.to_i # 10
x0, y0 = gets.split.map(&:to_i) # n = 10, m = 20
xn2, yn2 = gets.split.map(&:to_i) # n = 10, m = 20

p0 = Complex(x0, y0)
pn2 = Complex(xn2, yn2)
center = (p0 + pn2) / 2
p1 = (p0 - center) * Complex.polar(1, 2 * Math::PI / n) + center

puts p1.rect.join(' ')
